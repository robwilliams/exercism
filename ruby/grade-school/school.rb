class School
  def initialize
    @students = Hash.new { Array.new }
  end

  def db
    students.clone
  end

  def add(name, grade)
    students[grade] += Array(name)
  end

  def grade(grade)
    students[grade]
  end

  def sort
    students.sort.each_with_object({}) {|(k,v), result|
      result[k] = v.sort
    }
  end

  private
  attr_reader :students
end
