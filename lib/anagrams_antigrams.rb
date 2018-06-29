class Word
  def initialize(word1, word2)
    @word1 = word1.downcase.gsub(/[^a-z]/, '').chars
    @word2 = word2.downcase.gsub(/[^a-z]/, '').chars
  end

  def anagram?()
    if @word1.length == @word2.length
      if @word1.sort == @word2.sort
        true
      else
        false 
      end
    else
      "These words don't have the same number of letters"
    end

  end
end
