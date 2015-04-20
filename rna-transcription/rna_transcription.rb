module Complement
  # Converts between dna and rna
  @@dna_to_rna = { "G"=>"C", "A"=>"U", "T"=>"A", "C"=>"G" }
  @@rna_to_dna = @@dna_to_rna.invert
  
  def self.of_dna dna
    # Converts dna to rna
    begin
      return dna.chars.inject('') { |rna, d| rna + @@dna_to_rna[d] }
    rescue(TypeError)
      raise ArgumentError
    end
 end

  def self.of_rna rna
    # Converts rna to dna
    begin
      return rna.chars.inject('') { |dna, d| dna + @@rna_to_dna[d] }
    rescue(TypeError)
      raise ArgumentError
    end
  end
end
