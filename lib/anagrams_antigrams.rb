class Word
  def initialize(word1, word2)
    @word1 = word1.downcase.gsub(/[^a-z]/, '').chars
    @word2 = word2.downcase.gsub(/[^a-z]/, '').chars
  end

  def check_vowels()
    vowels = ['a', 'e', 'i', 'o', 'u']
    x = 0
    y = 0
    @word1.each { |letter| vowels.each { |vowel| (letter.include?(vowel) ? x += 1 : x += 0)}}
    @word2.each { |letter| vowels.each { |vowel| (letter.include?(vowel) ? y += 1 : y += 0)}}
    x >= 1 && y >= 1 ? true : false
  end

  def anagram?()
    intersection = (@word1 & @word2)
    intersection_num = intersection.length
    if check_vowels()
      if (@word1.any? {|letter| @word2.include?(letter)} == false)
        'Antigram'
      elsif @word1.length != @word2.length
        puts "These words share #{intersection_num} letters. They are #{intersection}."
        'These words don\'t have the same number of letters'
      elsif @word1.length == @word2.length
        @word1.sort == @word2.sort ? true : false
      end
    else
      'This is not a word'
    end
  end
end
