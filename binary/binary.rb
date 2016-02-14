class Binary
  # Converts binary strings to decimal equivalents
  VERSION=1
  def initialize(bin)
    raise ArgumentError.new("#{bin} is not a valid binary number") if bin =~ /[^10]/
    @bin = bin
  end

  # attr_reader considered, but makes validation difficult
  def to_decimal
    return @bin.each_char.inject(0) { |sum, digit| sum * 2 + digit.to_i }
  end
end
