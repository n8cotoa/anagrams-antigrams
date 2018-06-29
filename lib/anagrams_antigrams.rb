class Word
  def initialize(word1, word2)
    @word1 = word1.to_s.downcase
    @word2 = word2.to_s.downcase
  end

  def anagram?()
    x = 0
    word1_split = @word1.split('')
    word1_split.each do |letter1|
      if @word2.include?(letter1)
        x += 1
      end
    end
    if x == word1_split.length
      true
    else
      false
    end
  end
end
