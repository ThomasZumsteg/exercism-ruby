require "set"

class Robot
  @@names_in_use = Set.new

  attr_reader :name
  def initialize
    # Creates a new robot
    reset
  end

  def reset
    # Creates to robots name and ensures uniqueness
    @@names_in_use.delete(@name)
    loop do
      @name = [*'A'..'Z'].sample + [*'A'..'Z'].sample
      @name += "%03d" % [*0...1000].sample
      return if not @@names_in_use.include?(name)
    end
  end
end