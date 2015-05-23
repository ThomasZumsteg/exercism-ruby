class Queens
  attr_reader :black, :white

  def initialize(white: [0, 3], black: [7, 3])
    raise ArgumentError if white == black
    @white = white
    @black = black
  end

  def to_s
    # returns a board with the positions marked
    board = 8.times.map { Array.new(8, "_") }
    board[@black[0]][@black[1]] = "B"
    board[@white[0]][@white[1]] = "W"
    board.map { |line| line.join(" ") }.join("\n")
  end

  def attack?
    # If the queens can attack eachother
    x, y = @black.zip(@white).map { |b, w| b - w }
    x == 0 or y == 0 or x.abs == y.abs
  end
end