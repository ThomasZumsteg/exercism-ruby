class Trinary
  def initialize(digits)
    @digits = digits
  end

  def to_decimal
    return 0 if @digits =~ /[^012]/
    @digits.each_char.inject(0) { |decimal, c| decimal = decimal * 3 + c.to_i }
  end
end