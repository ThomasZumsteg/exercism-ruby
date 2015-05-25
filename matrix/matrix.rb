class Matrix
  attr_reader :rows, :columns

  def initialize(str_matrix)
    @rows = str_matrix.split("\n").map{ |row| row.split(" ").map{ |e| e.to_i }}
    @columns = @rows.transpose
  end
end