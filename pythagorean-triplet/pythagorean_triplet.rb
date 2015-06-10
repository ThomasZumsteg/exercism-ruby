class Triplet
  def initialize(*sides)
    @sides = sides
  end

  def sum
    @sides.inject(:+)
  end

  def product
    @sides.inject(:*)
  end

  def pythagorean?
    a, b, c = @sides.sort
    a**2 + b**2 == c**2
  end

  def self.where(max_factor:, min_factor: 1, sum: nil)
    combinations = min_factor.upto(max_factor).to_a.combination(3).to_a
    combinations.map! { | sides | Triplet.new(*sides) }
    combinations.select { | triplet | triplet.pythagorean? and (!sum or triplet.sum == sum) }
  end
end