class Hamming
  def self.compute dna_a, dna_b
    dna_a.chars.zip(dna_b.chars).count{ |a,b| a != b }
  end
end