require 'minitest'
require 'character_count'

class CharacterCountTest < Minitest::Test
  def test_puts_characters_on_seperate_lines
    character_count = CharacterCount.new("aab")

    assert character_count.format_output.lines[0]["a"]
    refute character_count.format_output.lines[0]["b"]
  end

  def test_sorts_in_decending_order
    character_count = CharacterCount.new("abaccc")

    assert_equal "c: 3\na: 2\nb: 1\n", character_count.format_output
  end

  def test_formats_string_with_char_colon_space_and_count
    character_count = CharacterCount.new("a")

    assert_equal "a: 1\n", character_count.format_output
  end

  def test_is_case_sensitive
    character_count = CharacterCount.new("aA")

    assert character_count.format_output.lines.count == 2

    character_count = CharacterCount.new("AA")

    assert character_count.format_output.lines.count == 1
  end
end
