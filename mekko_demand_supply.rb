require 'yaml'
require 'fileutils'

RSpec.describe 'MekkoGraphProcessing' do
  let(:script_dir) { File.dirname(File.expand_path(__FILE__)) }

  def read_yml(file_path)
    full_path = File.join(script_dir, '../etmodel/config/interface/output_element_series/', file_path)
    YAML.safe_load(File.read(full_path))
  end

  def write_gql(file_path_destination, data)
    FileUtils.mkdir_p(File.dirname(file_path_destination))
    File.open(file_path_destination, 'w') { |file| file.write(data) }
  end

  def create_queries(data, group_name)
    queries = data.select { |entry| entry['group'].casecmp(group_name).zero? }.map { |entry| entry['gquery'] }
    "- query = \n\t\tSUM(\n\t\t\t" + queries.map { |query| "Q(#{query})" }.join(",\n\t\t\t") + "\n\t\t)\n"
  end

  def process_file(file_path)
    data = read_yml(file_path)

    demand_queries = create_queries(data, 'demand')
    supply_queries = create_queries(data, 'supply')

    graph_name = File.basename(file_path, File.extname(file_path))

    base_name_destination = File.join(script_dir, '../etsource/gqueries/mechanical_turk/mekko/graphs/', graph_name + '/')
    demand_file = File.join(base_name_destination, "#{graph_name}_demand.gql")
    supply_file = File.join(base_name_destination, "#{graph_name}_supply.gql")

    write_gql(demand_file, demand_queries)
    write_gql(supply_file, supply_queries)

    { graph_name: graph_name, demand_file: demand_file, supply_file: supply_file }
  end

  def consolidate_tests(test_entries)
    test_dir = File.join(script_dir, 'spec/balancing_mekko/')
    FileUtils.mkdir_p(test_dir)
    test_file = File.join(test_dir, 'balancing_mekko_spec.rb')

    test_content = <<~RUBY
      require 'spec_helper'

      RSpec.describe 'Sankey Balancing' do
        Turk::PresetCollection.from_keys(:ii3050v2).each do |scenario|
    RUBY

    test_entries.each do |entry|
      graph_name = entry[:graph_name]
      test_content += <<~RUBY
        context "with scenario \#{scenario.original_scenario_id}" do
          it "should result in all input and output flows of #{graph_name} to be balanced" do
            expect(scenario.#{graph_name}_demand).to softly_equal(scenario.#{graph_name}_supply)
          end
        end
      RUBY
    end

    test_content += <<~RUBY
        end
      end
    RUBY

    File.open(test_file, 'w') { |file| file.write(test_content) }

    test_file
  end

  describe 'file processing' do
    let(:input_files) do
      [
        'mekko_of_co2_demand_supply.yml',
        'agriculture_local_heat_mekko.yml',
        'industrial_heat_mekko.yml',
        'mekko_of_hydrogen_network.yml',
        'mekko_of_ammonia_demand_supply.yml',
        'mekko_of_kerosene_demand_supply.yml'
      ]
    end

    it 'processes all files and creates queries' do
      test_entries = []

      input_files.each do |file|
        result = process_file(file)
        expect(result[:demand_file]).to include("#{result[:graph_name]}_demand.gql")
        expect(result[:supply_file]).to include("#{result[:graph_name]}_supply.gql")
        test_entries << { graph_name: result[:graph_name] }
      end

      consolidated_test_file = consolidate_tests(test_entries)
      expect(File).to exist(consolidated_test_file)
    end
  end
end