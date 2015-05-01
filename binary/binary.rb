class Binary
  # Converts binary strings to decimal equivalents
  def initialize(bin)
    @bin = bin
  end

  # attr_reader considered, but makes validation difficult
  def to_decimal
    return 0 if @bin =~ /[^10]/
    return @bin.each_char.inject(0) { |sum, digit| sum * 2 + digit.to_i }
  end
end