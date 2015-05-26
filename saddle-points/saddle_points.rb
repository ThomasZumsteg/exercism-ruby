class Matrix
  attr_reader :rows, :columns

  def initialize(str_matrix)
    # Make columns and rows from the string matrix
    @rows = str_matrix.split("\n").map { |row| row.split(" ").map(&:to_i) }
    @columns = @rows.transpose
  end

  def saddle_points
    # Find indexes of the biggest element in the row and smallest in the column
    @rows.length.times.to_a.product(@columns.length.times.to_a).select do |r, c|
      @rows[r][c] == @rows[r].max and @rows[r][c] == @columns[c].min
    end
  end
end