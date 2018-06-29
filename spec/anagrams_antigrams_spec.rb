require('rspec')
require('anagrams_antigrams')
require('pry')

describe('#anagrams_antigrams') do
  it('program should return true is words are anagrams') do
    words = Word.new('ruby', 'bury')
    expect(words.anagram?()).to(eq(true))
  end
  it('program will account for different letter casing') do
    words = Word.new('Tea', "Eat")
    expect(words.anagram?()).to(eq(true))
  end
  it('program will account for different word lengths') do
    words = Word.new('Teas', "Eat")
    expect(words.anagram?()).to(eq('These words don\'t have the same number of letters'))
  end
  it('program will remove punctuation and special characters') do
    words = Word.new('Ru,by!', "Bu9ry.")
    expect(words.anagram?()).to(eq(true))
  end
  it('program will check both words for vowels') do
    words = Word.new('Ru,by!', "Bu9ry.")
    expect(words.check_vowels()).to(eq(false))
  end

end
