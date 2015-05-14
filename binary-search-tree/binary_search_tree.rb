class Bst
  # Binary search tree

  attr_reader :data, :left, :right
  
  def initialize(data)
    @data = data
  end

  def insert(item)
    # Adds a new item to the tree (recursive)
    if item <= @data 
      @left ? @left.insert(item) : @left = Bst.new(item)
    else
      @right ? @right.insert(item) : @right = Bst.new(item)
    end
  end

  def each
    # All the elements in the tree sorted
    @left.each { |i| yield i } if @left
    yield @data
    @right.each { |i| yield i } if @right
  end
end