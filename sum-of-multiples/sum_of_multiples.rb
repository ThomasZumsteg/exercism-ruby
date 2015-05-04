class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def to(num)
    (0...num).select { |n| @multiples.any? { |m| n % m == 0}}.inject(:+)
  end

  def self.to(num)
    new(3,5).to(num)
  end
end