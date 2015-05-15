module CryptoArray
  # Adds a transpose method for ragged arrays
  refine Array do
    def rotate
      # transpose for ragged arrays of strings
      segments = self.map{ |group| group.split('') }
      segments[0].zip(*segments[1..-1]).map{ |line| line.join }
    end
  end
end

class Crypto
  # Creates a crypto square
  using CryptoArray

  attr_reader :normalize_plaintext, :size, :plaintext_segments
  attr_reader :ciphertext, :normalize_ciphertext

  def initialize(plaintext)
    @normalize_plaintext = plaintext.downcase.gsub(/\W/, '')
    @size = (@normalize_plaintext.length**0.5).ceil
    @plaintext_segments = @normalize_plaintext.scan(/.{1,#{@size}}/)

    ciphertext_segments = @plaintext_segments.rotate
    
    @ciphertext = ciphertext_segments.flatten.join
    @normalize_ciphertext = ciphertext_segments.join(" ")
  end
end
