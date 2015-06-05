class Cipher
  attr_reader :key
  def initialize(key=nil)
    raise ArgumentError if key and key !~ /\A[a-z]+\z/
    @key =  key || ('a'..'z').to_a.sample(20).join
  end

  def encode(plaintext)
    plaintext.each_byte.zip( @key.each_byte.cycle ).map do |d, k|
      (((d + k - 2 * 'a'.ord) % ('z'.ord - 'a'.ord + 1)) + 'a'.ord).chr
    end.join
  end

  def decode(ciphertext)
    ciphertext.each_byte.zip( @key.each_byte.cycle ).map do |c, k|
      (((c - k) % ('z'.ord - 'a'.ord + 1)) + 'a'.ord).chr
    end.join
  end
end