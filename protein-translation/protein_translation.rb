class Translation
  PROTEINS = {
    "AUG" => "Methionine",

    "UUU" => "Phenylalanine",
    "UUC" => "Phenylalanine",

    "UUA" => "Leucine",
    "UUG" => "Leucine",            
 
    "UCU" => "Serine",
    "UCC" => "Serine",
    "UCA" => "Serine",
    "UCG" => "Serine",  
 
    "UAU" => "Tyrosine",            
    "UAC" => "Tyrosine",

    "UGU" => "Cystine",           
    "UGC" => "Cystine",           

    "UGG" => "Tryptophan",                 
 
    "UAA" => "STOP",
    "UAG" => "STOP",
    "UGA" => "STOP",       
  }

  def self.of_codon(codon)
    PROTEINS[codon]
  end

  def self.of_rna(rna)
    protines = []
    rna.each_char.each_slice(3) do |*rna|
      raise InvalidCodonError unless PROTEINS.key?(*rna.join(''))
      protines << of_codon(rna.join(''))
      return protines[0..-2] if protines[-1] == "STOP"
    end
    return protines
  end

end

class InvalidCodonError < StandardError; end
