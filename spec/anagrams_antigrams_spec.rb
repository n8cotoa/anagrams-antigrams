require('rspec')
require('anagrams_antigrams')

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
end
