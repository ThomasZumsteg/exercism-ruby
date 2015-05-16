class Clock
  # Keeps track of time

  def self.at(hours, *minutes)
    # sets a clock
    Clock.new(hours, minutes[0] || 0)
  end

  def to_s
    # Looks like 01:07
    "%02d:%02d" % [@hours, @minutes]
  end

  def +(other)
    # Adds time to a clock
    Clock.new(@hours, @minutes + other)
  end

  def -(other)
    # Subtracts time from a clock
    Clock.new(@hours, @minutes - other)
  end

  def ==(other)
    # Test of two clock are equal
    self.to_s == other.to_s
  end

  private

  def initialize(hours, minutes)
    dh, @minutes = minutes.divmod(60)
    @hours = (hours + dh) % 24
  end
end