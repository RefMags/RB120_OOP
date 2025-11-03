=begin
Inheritance: is a concept that describes how behaviors are shared among classes
in OOP. There are two principles that describe how behaviors(methods) can be
  inherited by classes;
  1. Class inheritance, where we have a superclass from which subclasses inherit
  from.
  2. Interface inheritance, where methods defined in modules are shared into the
  classes via principle of mixin.

Encapsulation: bundling data and behaviors of a class, and control access for the
behaviors to the users of the class. Typically, methods are public that is they
are accessible to the outside, and here we use the concept of method access control.
With the method access control, we can control access with other methods such as
`private` and `protected`. These are strict and control how we restric access to
manipulate the values of the states of the instances of a class.
While `private` and `protected` share the strictness property, the distinguishing
part is that `protected` method allows access of methods defined under it
to be called on other instances of the same object typically for comparison.

Polymorphism: a concept that refers to how different objects can have access to
the same method, that could also be customized to their own behavior. Polymorphim
include 3 principle:
  - demonstrate via inheritance, where subclasses inherit from the superclass
  and overide the method to customize it to it own function.
    - still with inheritance, we can have classes mixin in interface from module.

- modules as container: we create modules for methods that are out of place in the
code but whose methods can be used for some classes.

- namespacing: organise classes that share some property and prevent name collision
with standard classes or others with the same name.

=end
module Fuelable
  def need_fuel
    puts "I need fuel to move"
  end
end

class Transport
  def deliver
    puts "I deliver goods."
  end
end

class Car < Transport
  include Fuelable
end

class Bicycle < Transport; end

# Car and Bicycle classes inherit from the `Transport` superclass, and have access
# to all methods in the superclass.
jimny = Car.new
merida = Bicycle.new

# Returns the `deliver method`
jimny.deliver # => "I deliver goods."
merida.deliver # => "I deliver goods."

# Car class inherits via interface inheritance and mixin the Fuelable module, Bicycle
# does not have access to the module methods
jimny.need_fuel # => "I need fuel to move"
# merida.need_fuel # => NoMethodError because its undefined for the instance of
# Bicycle

class Supermarket
  attr_reader :name

  def initialize(name, shampoo_price)
    @name = name
    @shampoo_price = shampoo_price
  end

  def increase_price(new_price)
    shampoo_price = new_price
  end

  def <(other)
    shampoo_price < other.shampoo_price
  end
  private
  attr_writer :shampoo_price

  protected
  attr_reader :shampoo_price
end

maruhon = Supermarket.new('maruhon', 400)
itoku = Supermarket.new('itoku', 550)

# We are acces the names of the stores publicy
puts maruhon.name # => maruhon
puts itoku.name # => itoku

# demonstrating private method access control
# Error message for NoMethodError as result of private message called on instance
# puts maruhon.shampoo_price = 440 # No method error because its a private method.
# puts itoku.shampoo_price = 650 # => # No method error because its a private method.

puts maruhon.increase_price(440)
puts itoku.increase_price(650)

# demonstrate protected method access control
puts maruhon < itoku # => true

# puts maruhon.shampoo_price # => NoMethodError as a result of protected method called
# on supermarket object.

# Polymorphism

# use the superclass `Transport` from above to a motocycle
class Motorcycle < Transport
  include Fuelable

  def need_fuel
    puts "Yes, but i can be fueled with petrol."
  end

  def deliver
    puts "I am not really suited to deliver goods but I can."
  end
end

# Here Motorcycle instance, inherits the `need_fuel` and `deliver` methods from
# via interface and class inheritance, ie shares the methods, however, it overides
# and customize the methods according to functionality of the class instances.

suzuki = Motorcycle.new
suzuki.need_fuel # => Yes, but i can be fueled with petrol.
suzuki.deliver # => I am not really suited to deliver goods but I can.
