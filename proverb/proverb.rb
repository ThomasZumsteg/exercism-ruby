class Proverb
  def initialize(*things, qualifier: nil)
    @things = things
    @last = (qualifier ? qualifier + " " : "")  + things[0]
  end
  
  def to_s
    lines = @things[0..-2].zip(@things[1..-1]).map do |cause, effect| 
      "For want of a #{cause} the #{effect} was lost."
    end
    lines << "And all for the want of a #{@last}."
    lines.join("\n")
  end 
end