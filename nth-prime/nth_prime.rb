class Prime
  @@primes = [nil,2,3,5,7,11,13,17]

  def self.nth(n)
    # Finds the nth prime
    raise ArgumentError if n <= 0

    number = @@primes[-1]
    while @@primes.length <= n do
      number += 1
      @@primes << number if not @@primes[1..-1].any? { |p| number % p == 0 }
    end
    return @@primes[n]
  end
end