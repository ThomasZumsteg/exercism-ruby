class SumOfMultiples
  @multiples = [3, 5]

  def initialize(*multiples)
    @multiples = multiples
  end

  def to(num)
    return (0...num).select { |n| @multiples.any? { |m| n % m == 0}}.inject(:+)
  end

  def self.to(num)
    return (0...num).select { |n| @multiples.any? { |m| n % m == 0}}.inject(:+)
  end
end