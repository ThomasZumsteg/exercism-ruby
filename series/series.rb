class Series
  # Divides a digit string to groups
  def initialize(digits)
    @digits = digits
  end
  
  def slices(slice_length)
    number_slices = @digits.length - slice_length + 1
    raise ArgumentError if number_slices <= 0
    number_slices.times.map{ |i| @digits[i,slice_length].each_char.map{ |d| d.to_i} }
  end
end