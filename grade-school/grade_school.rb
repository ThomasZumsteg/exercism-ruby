class School
  # A school database
  def initialize
    @school_db = Hash.new { |hash, key| hash[key] = [] }
  end

  def to_hash
    # Returns in a sorted order
    Hash[ @school_db.sort.map{ |grade, students| [grade, students] } ] 
  end

  def add(student, grade)
    @school_db[grade] << student
    @school_db[grade].sort!
  end

  def grade(grade)
    @school_db[grade]
  end
end