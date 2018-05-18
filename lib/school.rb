class School
  attr_accessor :school_name, :roster

  def initialize(school_name)
    @roster = {}
    @school_name = school_name
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_hash = {}
    @roster.each do |grade, name|
      name.sort!
    end
  end
end

