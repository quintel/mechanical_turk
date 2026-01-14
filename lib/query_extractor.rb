require 'yaml'

module Turk
  # Extracts gquery method names from specs based on patterns defined in query_sources.yml
  class QueryExtractor
    QUERY_SOURCES_PATH = File.expand_path('../../query_sources.yml', __FILE__)

    class << self
      # Returns all unique queries from all configured sources
      # Use example:  Turk::QueryExtractor.all
      def all
        config.flat_map do |_, group|
          extract_from_group(group)
        end.uniq
      end

      # Returns queries only for specific spec files that will be run
      # @param spec_files [Array<String>] list of spec file paths matching those in query_sources.yml
      # Use example:  Turk::QueryExtractor.for_files(['spec/demand/biomass_spec.rb'])
      def for_files(spec_files)
        config.flat_map do |_, group|
          pattern = group['pattern']
          matching_files = group['files'].select { |f| spec_files.include?(f) }

          matching_files.flat_map do |file|
            extract_queries_from_file(file, pattern)
          end
        end.uniq
      end

      private

      def config
        @config ||= YAML.load_file(QUERY_SOURCES_PATH)
      end

      def extract_from_group(group)
        pattern = group['pattern']
        files = group['files'] || []

        files.flat_map do |file|
          extract_queries_from_file(file, pattern)
        end
      end

      # Extracts query names matching the pattern from a spec file
      # Looks for: scenario.<pattern> or @scenario.<pattern>
      def extract_queries_from_file(file_path, pattern)
        return [] unless File.exist?(file_path)

        content = File.read(file_path)
        regex = /(?:@?scenario)\.(\b#{pattern})/
        content.scan(regex).flatten
      end
    end
  end
end
