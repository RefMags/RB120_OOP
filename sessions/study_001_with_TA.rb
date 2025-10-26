# Q1.
# Q2. Can you explain what the Method Lookup path is? Create an example
# and explain how it works in your example.
#
module Fuelable
  def fuel
    puts "I only use fuel."
  end
end

class Transport
  def deliver
    "I can deliver goods."
  end
end

class Car < Transport
  include Fuelable
  def travel_distance
    puts "I can only travel short distance."
  end
end

class Bicycle < Transport; end

# p Car.ancestors # => [Car, Fuelable, Transport, Object, Kernel, BasicObject]
# p Bicycle.ancestors # => [Bicycle, Transport, Object, Kernel, BasicObject]

class Animal
  def speak
    sound
  end
end

class Dog < Animal
  def sound
    puts "Woof!"
  end
end

Dog.new.speak  # => "Woof!"
p Dog.ancestors

# Find the owner of the `speak` method
p Dog.new.method(:speak).owner # => Animal

# Find the owner of the `sound` method
p Dog.new.method(:sound).owner # => Dog
