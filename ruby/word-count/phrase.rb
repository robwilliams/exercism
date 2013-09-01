class Phrase < Struct.new(:phrase)
  def word_count
    words.each_with_object(Hash.new(0)) do |word, hash|
      hash[word] += 1
    end
  end

  def words
    phrase.downcase.gsub(/[^a-z0-9\s,]/i, '').split(/\,|\s/).reject{|word| word == "" }
  end
end
