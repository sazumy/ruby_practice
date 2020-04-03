require './lib/08_deep_freezable'

class Bank
  extend DeepFreezable

  CURRENCIES = deep_freeze({ 'Japan' => 'yen', 'US' => 'doller', 'India' => 'rupee' })
end
