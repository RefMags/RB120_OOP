# Deconstructing creation of class variables and their function.
class GoodDog
  @@number_of_dogs = 0

  # the constructo (`initialize`) method increment the number of dogs by 1 everytime we instantiate a new dog instance
  def initialize
    @@number_of_dogs += 1
  end

  # return the value of the class variable in the class method
  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

# we call the class method `total_number_of_dogs` on `GoodDog` class
puts GoodDog.total_number_of_dogs

# 2 dog instances are initiatiated and stored into two separate variables.
dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs
