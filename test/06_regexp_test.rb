require 'minitest/autorun'
require './lib/06_regexp'

class RegexpTest < Minitest::Test
  def test_convert_hash_syntax
    old_syntax = <<~TEXT
    {
      :name => 'Alice',
      :age => '20',
      :gender => :female
    }
  TEXT
  expected = <<~TEXT
    {
      name: 'Alice',
      age: '20',
      gender: :female
    }
  TEXT
  assert_equal expected, convert_hash_syntax(old_syntax)
  end
end
