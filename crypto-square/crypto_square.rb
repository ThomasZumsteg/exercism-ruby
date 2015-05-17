class Crypto
  # Creates a crypto square

  attr_reader :normalize_plaintext, :size, :plaintext_segments
  attr_reader :ciphertext, :normalize_ciphertext

  def initialize(plaintext)
    @normalize_plaintext = plaintext.downcase.gsub(/\W/, '')
    @size = (@normalize_plaintext.length**0.5).ceil
    @plaintext_segments = @normalize_plaintext.scan(/.{1,#{@size}}/)

    ciphertext_segments = rotate(@plaintext_segments)
    
    @ciphertext = ciphertext_segments.flatten.join
    @normalize_ciphertext = ciphertext_segments.join(" ")
  end

  private

  def rotate matrix
    # transpose for ragged arrays of strings
    segments = matrix.map{ |group| group.split('') }
    segments[0].zip(*segments[1..-1]).map{ |line| line.join }
  end
end
