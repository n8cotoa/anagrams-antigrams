require('rspec')
require('anagrams_antigrams')
require('pry')

describe('#anagrams_antigrams') do
  it('program should return true is words are anagrams') do
    words = Word.new('ruby', 'bury')
    expect(words.anagram?()).to(eq(true))
  end
  it('program will check if the words are antigrams') do
    words = Word.new('hi', 'bye')
    expect(words.anagram?()).to(eq('Antigram'))
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
    expect(words.anagram?()).to(eq(true))
  end
  it('program will check if phrases are anagrams') do
    words = Word.new('O, DRACONIAN DEVIL', 'LEONARDO DA VINCI')
    expect(words.anagram?()).to(eq(true))
  end
  it('program will check if phrases are antigrams') do
    words = Word.new('jumpy brick', 'glent vozhd')
    expect(words.anagram?()).to(eq('Antigram'))
  end
end
