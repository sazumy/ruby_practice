require 'minitest/autorun'
require './lib/10_word_synth.rb'
require './lib/10_effects'

class WordSynthTest < Minitest::Test
  def test_play_without_effects
    synth = WordSynth.new
    assert_equal 'Ruby is fun!', synth.play('Ruby is fun!')
  end

  def play_with_reverse
    synth = WordSynth.new
    synth.add_effect(Effects.reverse)
    assert_equal 'ybuR si !nuf', effect.call('Ruby is fun!')
  end
end
