class Series
  attr_reader :digits

  def initialize(digits)
    @digits = digits.each_char.map(&:to_i)
  end

  def slices(size)
    raise ArgumentError if @digits.length < size
    @digits.each_cons(size).to_a
  end

  def largest_product(size)
    return 1 if size <= 0
    slices(size).map { |set| set.inject(:*) }.max
  end
end