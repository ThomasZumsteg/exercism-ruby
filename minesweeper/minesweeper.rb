class Board
  def self.transform(board)
    row_len = board[0].length
    
    caps_correct = [board[0],board[-1]].all? do |caps|
      caps =~ /^\+-{#{row_len - 2}}\+$/
    end

    rows_correct = board[1..-2].all? do |row|
      passes = row =~ /^\|[ *]{#{row_len - 2}}\|$/
    end

    raise ValueError unless caps_correct and rows_correct

    board.each_with_index.map do |row, r|
      row.split('').each_with_index.map do |item, c|
        item == ' ' ? count_mines(board, r, c): item
      end.join('')
    end
  end

  def self.count_mines(board, r, c)
    mines = board[(r-1)..(r+1)].map{ |row| row[(c-1)..(c+1)] }.join('').count('*')
    mines == 0 ? ' ' : mines.to_s
  end
end

class ValueError < StandardError
end