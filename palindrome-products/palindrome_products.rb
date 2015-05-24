require "ostruct"

class Palindromes
  attr_reader :largest, :smallest

  def initialize(max_factor:, min_factor: 1)
    @max_factor = max_factor
    @min_factor = min_factor
  end
  
  def generate
    palindromes = Hash.new{ |h, k| h[k] = []}
    [*@min_factor..@max_factor].repeated_combination(2) do |m, n|
      num = n * m
      palindromes[num].push([m,n]) if num.to_s == num.to_s.reverse
    end

    large_value, large_factors = palindromes.max
    @largest = OpenStruct.new(value: large_value, factors: large_factors)

    small_value, small_factors = palindromes.min
    @smallest = OpenStruct.new(value: small_value, factors: small_factors)
  end
end