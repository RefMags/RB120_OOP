class Vehicle
  attr_reader :tires

  def initialize
    @tires = 4
  end

  def wheels
    puts "This vehicle has #{tires} tires."
  end
end

class Motorcycle < Vehicle
  def initialize
    @tires = 2
  end
end

p Vehicle.new.tires # => 4
p Motorcycle.new.tires # => 2

Vehicle.new.wheels # => This vehicle has 4 tires.
Motorcycle.new.wheels # => This vehicle has 2 tires.
