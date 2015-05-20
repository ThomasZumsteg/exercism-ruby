class Hexadecimal
  def initialize(hex_digits)
    @hex_digits = hex_digits
    @hex_values = "0123456789ABCDEFG"
  end

  def to_decimal
    @hex_digits.each_char.inject(0) do | total, digit |
      return 0 unless value = @hex_values.index(digit.upcase)
      total * 16 + value
    end
  end
end