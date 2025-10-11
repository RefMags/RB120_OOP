# Private method call
class House
  attr_accessor :year_built

  def initialize(year_built)
    @year_built = year_built
  end
end

mud_house = House.new(1986)
mud_house.year_built # 1986
mud_house.year_built = 2000
mud_house.year_built

# ========== Private ======================#
class Student
  attr_reader :grade

  def initialize
    @grade = 0
  end

  def update_grade(mark)
    self.grade = mark
  end

  private
  attr_writer :grade
end

bob = Student.new
bob.grade
p bob.update_grade(90)
#bob.grade = 90 # if we try to do a reassignment using the setter method we get a method call error
# for setter because its a private method and inaccessible outside the class.
bob.grade

# ========== Protected ======================#
#
class Toddler
  def initialize(name)
    @name = name
  end

  def ==(other_toddler)
    name == other_toddler.name
  end

  # protected
  private
  attr_reader :name
end

tom = Toddler.new("Tom")
tommy = Toddler.new('Tom')
puts tom == tommy # true

# puts tom.name # protected method error.
