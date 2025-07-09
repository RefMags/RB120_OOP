
=begin
- Create class `Student`
- attributes `name` & `grade`
- privatise the grade getter such that `joe.grade` results in an error
- Create a `better_grade_than?` method
=end

class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_person)
    puts "Well done!" if grade > other_person.grade
  end

  protected
  attr_reader :grade
end

joe = Student.new("Joe", 90)
# puts joe.grade # results in error message as a result of making getter method private
bob = Student.new("Bob", 100)

joe.better_grade_than?(bob)
joe.grade
