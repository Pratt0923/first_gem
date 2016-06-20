require 'test_helper'
require 'first_gem_creation'
require "pry"

class FirstGemCreationTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::FirstGemCreation::VERSION
  end

  def test_returns_a_random_number
    r = FirstGemCreation.new
    random_number = r.number_randomizer
    assert random_number < 1000
    assert random_number > -1000
  end
end
