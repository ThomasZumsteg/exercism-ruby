class Anagram
  # Finds anagrams for a word
  def initialize(word)
    @word = word.downcase
    @letters = @word.chars.sort
  end
  
  def match(words)
    # Words that have the same letters but not in the same order
    words.select { |w| w.downcase.chars.sort == @letters and w.downcase != @word }
  end
  
end