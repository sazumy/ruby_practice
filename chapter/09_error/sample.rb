puts 'Start.'
module Greeter
  def hello
    'hello'
  end
end

begin
  greeter = Greeter.new
rescue
  puts '例外が発生したけれども、このまま処理を続ける'
end

puts 'End.'
