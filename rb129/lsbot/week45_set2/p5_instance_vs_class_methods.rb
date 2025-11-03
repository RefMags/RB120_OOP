class Vehicle
  def initialize(year)
    @year = year
  end

  def self.total_vehicles
    # code to track total vehicles
  end

  def age
    # code to calculate age of vehicle
  end
end

# Vehicle.age # => causes an undefined method `age` called on a class.
Vehicle.new(1990).age

# the `Vehicle.age` line causes an undefined method for `age` method called on a
# class. `age` is an instance method and instance methods are method that are
# invoked on instances of a class to output what an instance can do, they are scoped
# to the level of an instance and not class.
# We could invoke an instance of vehicle and then call the `age` method on it
# like this:  `Vehicle.new(1990).age`.
