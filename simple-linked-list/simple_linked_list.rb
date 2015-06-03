class Element
  attr_reader :datum, :next

  def initialize(datum, next_link)
    @datum = datum
    @next = next_link 
  end

  def self.to_a(link)
    return [] unless link
    [link.datum] + Element.to_a(link.next)
  end

  def to_a
    Element.to_a(self)
  end

  def self.from_a(array)
    link = nil
    array.reverse_each { |e| link = Element.new(e, link) }
    link
  end

  def reverse
    Element.from_a(to_a.reverse)
  end
end

class NilClass
  def reverse
    []
  end
end