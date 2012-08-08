Dir[File.expand_path("../../lib/*.rb", __FILE__)].each {|f| require f}

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

RSpec::Matchers.define :not_change do
  match { |actual| actual.decrease == 0 }
  failure_message_for_should do |actual|
    "I expected the value not to change, but actually it changed with #{actual.increase}"
  end
end
