class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  # The setter method is used in the `initialize` method to initialize `@name` and `@age` instance variables given by the `attr_accessor` method.
  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS
  end
end


sparky = GoodDog.new("Sparky", 4)
# Use the `age` getter method to expose the value of the object
puts sparky.age
