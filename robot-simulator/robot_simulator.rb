class Robot
  attr_reader :bearing, :coordinates

  COMPASS = [:north, :east, :south, :west]
  VECTOR =  [[0,1],  [1,0], [0,-1], [-1,0]]

  def orient(direction)
    raise ArgumentError unless COMPASS.include?(direction)
    @bearing = direction
    self
  end

  def turn_right
    orient(COMPASS[(COMPASS.index(@bearing) + 1) % 4])
  end

  def turn_left
    orient(COMPASS[(COMPASS.index(@bearing) - 1) % 4])
  end

  def at(north_south, east_west)
    @coordinates = [north_south, east_west]
    self
  end

  def advance
    north_south, east_west = @coordinates
    d_north_south, d_east_west = VECTOR[COMPASS.index(@bearing)]
    @coordinates = [north_south + d_north_south, east_west + d_east_west]
    self
  end
end

class Simulator
  INSTRUCTIONS = {'L' => :turn_left, 'R' => :turn_right, 'A' => :advance}  

  def instructions(steps)
    steps.each_char.map { |c| INSTRUCTIONS[c] }
  end

  def place(robot, x:, y:, direction:)
    robot.at(x,y).orient(direction)
  end

  def evaluate(robot, steps)
    instructions(steps).each{ |step| robot.send(step) }
  end
end