require 'test_helper'

class FirstGemCreationTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::FirstGemCreation::VERSION
  end

end
