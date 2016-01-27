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
      @name += "%03d" % rand(0..1000)
      if not @@names_in_use.include?(name)
          @@names_in_use << @name
          return
      end
    end
  end
end
