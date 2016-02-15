class Squares
  # Square sequence sums and differences
  VERSION=2

  def initialize(num)
    @num = num
  end

  def difference
    square_of_sum - sum_of_squares
  end

  def square_of_sum
    @square_of_sums ||= @num**2 * (@num + 1)**2 / 4
  end

  def sum_of_squares
    @sum_of_squares ||= @num * (@num + 1) * (2*@num + 1) / 6
  end

end
