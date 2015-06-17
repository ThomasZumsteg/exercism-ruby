class CustomSet
  def initialize(set=[])
    @set = {}
    set.each { |item| put(item) }
  end

  def ==(other_set)
  	to_a.sort.eql?(other_set.to_a.sort)
  end

  def delete(item)
  	@set.delete(item.hash)
  	self
  end

  def to_a
    @set.values
  end

  def put(item)
    @set[item.hash] = item unless @set.key?(item.hash)
    self
  end

  def empty
  	@set.clear
  end

  def difference(other_set)
  	CustomSet.new(to_a - other_set.to_a)
  end

  def disjoint?(other_set)
	@set.values.all? { |k| not other_set.member?(k) }
  end

  def member?(item)
  	@set.key?(item.hash)
  end

  def intersection(other_set)
  	CustomSet.new(to_a.select { |item| other_set.member?(item) })
  end

  def subset?(other_set)
  	other_set.to_a.all? {|item| member?(item) }
  end

  def size
  	@set.size
  end

  def union(other_set)
  	CustomSet.new(to_a + other_set.to_a)
  end
end