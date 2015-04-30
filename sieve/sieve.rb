class Sieve
	attr_reader :primes

  def initialize(len)
    # Prime sieve inspired by http://rosettacode.org/wiki/Sieve_of_Eratosthenes#Ruby
    @primes = [nil, nil, *2..len]
    (2..len**0.5).each do |n|
      (n**2..len).step(n) { |m| @primes[m] = nil } if @primes[n]
    end
    @primes.compact!
  end
end
	