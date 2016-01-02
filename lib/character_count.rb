require 'pry'
class CharacterCount
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def sorted_characters
    string.chars.group_by { |char| char }
                .map { |char, chars| [char, chars.count] }
                .sort_by { |char, count| count }.reverse
  end

  def format_output
    sorted_characters.map do |char, count|
      "#{char}: #{count}\n"
    end.join
  end
end
# grab the input string
if __FILE__ == $PROGRAM_NAME
  character_count = CharacterCount.new(ARGV[0])
  # format string
  puts character_count.format_output
end
