class Squares
  # Square sequence sums and differences

  def initialize(num)
    @num = num
  end

  def difference
    square_of_sums - sum_of_squares
  end

  def square_of_sums 
    @square_of_sums ||= @num**2 * (@num + 1)**2 / 4
  end

  def sum_of_squares
    @sum_of_squares ||= @num * (@num + 1) * (2*@num + 1) / 6
  end

end