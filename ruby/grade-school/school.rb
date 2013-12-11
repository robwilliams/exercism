class School
  def initialize
    @db = Hash.new { Array.new }
  end
  attr_reader :db

  def add(name, grade)
    db[grade] += Array(name)
  end

  def grade(grade)
    db[grade]
  end

  def sort
    db.sort.each_with_object({}) {|(k,v), result|
      result[k] = v.sort
    }
  end
end
