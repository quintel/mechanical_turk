Dir[File.expand_path("../../lib/*.rb", __FILE__)].each {|f| require f}

RSpec::Matchers.define :increase do
  match do |actual|
    actual.increase > 0
  end
end

RSpec::Matchers.define :decrease do
  match do |actual|
    actual.decrease > 0
  end
end

RSpec::Matchers.define :not_change do
  match do |actual|
    actual.decrease == 0
  end
end
