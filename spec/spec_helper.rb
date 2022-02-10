require 'pry'

Dir[File.expand_path("../../lib/*.rb", __FILE__)].each {|f| require f}

puts "INFO: Using Server #{Turk::Connection::SERVER_ADDRESS}...."

RSpec::Matchers.define :increase do
  match{ |actual| actual.increase > 0 }
  failure_message_for_should do |actual|
    if actual.increase == 0
      "expected an increase, but actually it stayed the same: #{actual.future}"
    else
      "expected an increase, but actually got a decrease of #{actual.decrease}"
    end
  end
end

RSpec::Matchers.define :decrease do
  match { |actual| actual.decrease > 0 }
  failure_message_for_should do |actual|
    if actual.decrease == 0
      "expected a decrease, but actually it stayed the same: #{actual.future}"
    else
      "expected a decrease, but actually got an increase of #{actual.increase}"
    end
  end
end

RSpec::Matchers.define :not_increase do
  match { |actual| actual.increase <= 0 }
  failure_message_for_should do |actual|
    "I expected the value not to increase, but actually it increased with #{actual.increase}"
  end
end

RSpec::Matchers.define :not_change do
  match { |actual| actual.decrease == 0 }
  failure_message_for_should do |actual|
    "I expected the value not to change, but actually it changed with #{actual.increase}"
  end
end

RSpec::Matchers.define :change do
  match { |actual| actual.decrease != 0 }
  failure_message_for_should do |actual|
    "I expected the value to change, but it didn't"
  end
end

RSpec::Matchers.define :softly_equal do |query_two|
  match do |query_one|
    margin = 1.0E-12 * query_two.value
    (query_two.value - query_one.value).abs <= margin.abs
  end

  failure_message_for_should do |query_one|
    "expected #{format_float(query_one.value)} to be within #{(1.0E-12 * query_two.value).abs} of \
#{format_float(query_two.value)} (difference of #{format_float((query_one.value - query_two.value).abs)})"
  end
end

RSpec::Matchers.define :sum_to_softly_equal do |query_two|
  match do |queries|
    actual = queries.inject(0) { |sum, q| sum + q.value }
    margin = 1.0E-12 * query_two.value
    (query_two.value - actual).abs <= margin.abs
  end

  failure_message_for_should do |queries|
    actual = queries.inject(0) { |sum, q| sum + q.value }
    "actual #{format_float(actual)} to be within #{(1.0E-12 * query_two.value).abs} of \
#{format_float(query_two.value)} (difference of #{format_float((actual - query_two.value).abs)})"
  end
end

def format_float(number)
  before_dot, after_dot = number.to_s.split('.')
  "#{before_dot.reverse.scan(/.{1,3}/).join(',').reverse}.#{after_dot}"
end
