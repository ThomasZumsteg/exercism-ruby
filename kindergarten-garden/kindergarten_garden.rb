class Garden
  DEFAULT_STUDENTS = %w(Alice Bob Charlie David Eve Fred
    Ginny Harriet Ileana Joseph Kincaid Larry)
  
  PLANTS = {
    "V" => :violets,
    "R" => :radishes,
    "G" => :grass,
    "C" => :clover,
  }

  def initialize(garden, students = nil)
    students = (students || DEFAULT_STUDENTS).map { |s| s.downcase.to_sym }.sort
    garden = garden.split("\n").map{ |r| r.each_char.each_slice(2).to_a }.transpose
    garden.map! { |elem| elem.flatten.map { |p| PLANTS[p]}}
    @garden = Hash[ students.zip(garden) ]
  end
  
  def method_missing(method, *args, &block)
    (@garden.has_key?(method) and @garden[method]) ? @garden[method] : super
  end
end