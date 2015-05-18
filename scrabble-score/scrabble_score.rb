Letter_scores = {
  "AEIOULNRST" => 1, 
  "DG" => 2,
  "BCMP" => 3,
  "FHVWY" => 4,
  "K" => 5,
  "JX" => 8,
  "QZ" => 10,
}.each.inject({}) do |acc, item|
  acc.merge(Hash[item[0].each_char.map{ |c| [c, item[1]] } ] )
end

class Scrabble
  # Score words in scrabble
  def initialize(word)
    @word = word ? word.upcase.gsub(/[^A-Z]/, '') : ''
  end

  def score
    @word.each_char.map{ |c| Letter_scores[c] }.inject(:+) || 0
  end

  def self.score(word)
    Scrabble.new(word).score
  end
end