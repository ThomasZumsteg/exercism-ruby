class Deque 
  def initialize
    @start = nil    
  end

  def push(data)
    @start = Element.new(data, @start)
  end
  
  def pop
    temp = @start.remove
    @start = temp.next_elem != @start ? temp.next_elem : nil
    temp.data
  end

  def shift
    temp = @start.prev_elem.remove
    @start = nil if temp == @start
    temp.data
  end

  def unshift(data)
    e = Element.new(data, @start && @start.prev_elem)
    @start = e unless @start
  end
end

class Element
  attr_accessor :prev_elem, :next_elem
  attr_reader :data

  def initialize(data, next_elem)
    @data = data

    if next_elem
      @prev_elem = next_elem.prev_elem
      @next_elem = next_elem
      @next_elem.prev_elem = self
      @prev_elem.next_elem = self
    else
      @prev_elem, @next_elem = self, self
    end
  end

  def remove
    tmp = @prev_elem
    @prev_elem.next_elem = @next_elem if @prev_elem
    @next_elem.prev_elem = tmp if @next_elem
    self
  end
end