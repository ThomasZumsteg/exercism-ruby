module Grains
  # Grains on a chessboard
  def self.square(n)
    return 2**(n-1)
  end
  def self.total
    return (2**64)-1
  end
end