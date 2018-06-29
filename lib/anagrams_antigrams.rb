class Word
  def initialize(word1, word2)
    @word1 = word1.downcase.gsub(/[^a-z]/, '').chars
    @word2 = word2.downcase.gsub(/[^a-z]/, '').chars
  end

  def check_vowels()
    vowels = ['a', 'e', 'i', 'o', 'u']
    x = 0
    y = 0
    @word1.each do |letter|
      vowels.each do |vowel|
        if letter.include?(vowel)
          x += 1
        end
      end
    end
    @word2.each do |letter|
      vowels.each do |vowel|
        if letter.include?(vowel)
          y += 1
        end
      end
    end
    if x >= 1 && y >= 1
      true
    else
      false
    end
  end

  def anagram?()
    if check_vowels()
      if (@word1.any? {|letter| @word2.include?(letter)} == false)
        'Antigram'
      elsif @word1.length == @word2.length
        if @word1.sort == @word2.sort
          true
        else
          false
        end
      else
        'These words don\'t have the same number of letters'
      end
    else
      'This is not a word'
    end
  end
end
