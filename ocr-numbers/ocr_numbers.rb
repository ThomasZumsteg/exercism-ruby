class OCR
  @@digits = [
 " _ \n"+
 "| |\n"+
 "|_|\n",

 "   \n"+
 "  |\n"+
 "  |\n",

 " _ \n"+
 " _|\n"+
 "|_ \n",

 " _ \n"+
 " _|\n"+
 " _|\n",

 "   \n"+
 "|_|\n"+
 "  |\n",

 " _ \n"+
 "|_ \n"+
 " _|\n",

 " _ \n"+
 "|_ \n"+
 "|_|\n",

 " _ \n"+
 "  |\n"+
 "  |\n",

 " _ \n"+
 "|_|\n"+
 "|_|\n",

 " _ \n"+
 "|_|\n"+
 " _|\n",
]

  def initialize(text)
    @lines = text.split(/\n\s*\n/).map do |line|
      len = line.split("\n").map(&:length).max
      top, *bottom = line.split("\n").map{ |row| ("%-#{len}s" % row).scan(/.{1,3}/) }
      top.zip(*bottom).map { |char| ("%-3s\n" * 3) % [*char] }
    end
  end
  
  def convert
    @lines.map do |line| 
      line.map{ |char| @@digits.index(char) || "?" }.map(&:to_s).join
    end.join(',')
  end
end

