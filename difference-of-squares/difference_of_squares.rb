class Squares
  # Square sequence sums and differences
  attr_reader :square_of_sums, :sum_of_squares, :difference

  def initialize(num)
    @square_of_sums = num**2 * (num + 1)**2 / 4
    @sum_of_squares = num * (num + 1) * (2*num + 1) / 6
    @difference = @square_of_sums - @sum_of_squares
  end

end