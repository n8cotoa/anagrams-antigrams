require('rspec')
require('anagrams_antigrams')

describe('#anagrams_antigrams') do
  it('program should return true is words are anagrams') do
    words = Word.new('ruby', 'bury')
    expect(words.anagram?()).to(eq(false))
  end
end
