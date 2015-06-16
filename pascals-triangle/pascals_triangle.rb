class Triangle
  attr_reader :rows

  def initialize(n_rows)
    @rows = n_rows.times.map do |row|
      (row+1).times.map { |col| Triangle.binomial(row, col) }
    end
  end
  
  private

  def self.binomial(n, k)
    factorial(n) / (factorial(k) * factorial(n - k))
  end

  def self.factorial(n)
    n == 0 ? 1 : 1.upto(n).inject(:*)
  end
end