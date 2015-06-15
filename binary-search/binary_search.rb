class BinarySearch
attr_reader :list, :middle

  def initialize(list)
    raise ArgumentError if list.each_cons(2).any? { |a, b| (a <=> b) > 0 }
    @middle = (list.length - 1) / 2
    @list = list
  end

  def search_for(item)
    first, middle, last = 0, (@list.length - 1) / 2, (@list.length - 1)
    while true
      raise RuntimeError if first >= last
      case @list[middle] <=> item
      when 1
        middle, last = (first + last) / 2, middle - 1
      when 0
        return middle
      when -1
        first, middle = middle + 1, (first + last) / 2
      end
    end
  end
end