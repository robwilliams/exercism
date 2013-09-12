class Anagram < Struct.new(:anagram)

  def match(arr)
    @words = arr
    words_to_match.each_with_index.map do |word, i|
      words[i] if word.chars.sort == anagram_to_match.chars.sort
    end.compact
  end

  private
  attr_reader :words

  def words_to_match
    words.map(&:downcase) - [anagram_to_match]
  end

  def anagram_to_match
    anagram.downcase
  end
end
