module PrimeFactors
  def self.for(num)
    # prime factors of a number
    n = 2
    factors = []
    while 1 < num
      if num % n == 0
        factors << n
        num /= n
      else
        # Could be replaced with a primes iterator
        n += 1
      end
    end
    factors
  end
end
