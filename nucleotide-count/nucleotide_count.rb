class Nucleotide
  def initialize(dna)
    @dna = dna
  end
  
  def self.from_dna(dna)
    raise ArgumentError if dna =~ /[^GTAC]/
    Nucleotide.new(dna)
  end

  def count(letter)
    @dna.count(letter)
  end

  def histogram
    %w(G T A C).each_with_object({}) { |char, hist| hist[char] = count(char) }
  end
end