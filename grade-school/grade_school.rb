class School
  # A school database
  VERSION=1
  def initialize
    @school_db = Hash.new { |hash, key| hash[key] = [] }
  end

  def to_h
    # Returns in a sorted order
    Hash[ @school_db.sort ] 
  end

  def add(student, grade)
    @school_db[grade].push(student).sort!
  end

  def grade(grade)
    @school_db[grade]
  end
end
