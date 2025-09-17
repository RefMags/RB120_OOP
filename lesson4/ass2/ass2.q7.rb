class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    self.age += 1 # self refers to the instance object that will call the `make_one_year_older`
  end
end

kitty = Cat.new("Balinese")
puts kitty.make_one_year_older
