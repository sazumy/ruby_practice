require 'minitest/autorun'
require './lib/08_bank'
require './lib/08_team'

class DeepFreezableTest < MiniTest::Test
  def test_deep_freezable_to_array
    assert_equal ['Japan', 'US', 'India'], Team::COUNTRIES
    assert Team::COUNTRIES.frozen?
    assert Team::COUNTRIES.all? { |country| country.frozen? }
  end

  def test_deep_freezable_to_hash
    assert_equal ({ 'Japan' => 'yen', 'US' => 'doller', 'India' => 'rupee' }), Bank::CURRENCIES
    assert Bank::CURRENCIES.frozen?
    assert Bank::CURRENCIES.all? { |country| country.frozen? }
  end
end
