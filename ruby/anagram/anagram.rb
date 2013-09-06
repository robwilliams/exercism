#class Anagram < Struct.new(:word)
  #def match(words)
    #words.select{|x| 
      #x = x.downcase
      #(x.length == word.length) &&
      #(x.chars - word.chars).empty?
    #}.reject{|x| x.downcase == word }
  #end

  #def word
    #super.downcase
  #end
#end

class Anagram
  def initialize(word)
    @word = word
  end

  def match(words)
    words_to_match(words)
  end

  private
  attr_reader :word

  def words_to_match(words)
    words - [word]
  end
end
