require 'minitest'

class AcceptanceTest < Minitest::Test
  def test_outputs_the_result_of_the_input_string
    result = `ruby lib/character_count.rb aaabbc`
    expected = "a: 3\n" +
               "b: 2\n" +
               "c: 1\n"

    assert_equal expected, result
  end
end
