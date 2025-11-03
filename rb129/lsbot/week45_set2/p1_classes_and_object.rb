=begin
  A class is a blueprint from which an object is created from.
  The class structure encapsulates all attributes and behaviors
  which objects of the class inherits.
  The objects have value, though we must point out that classes
  too can be clasified as objects because they have value.
  But in the case of object to classes, these are instances which
  are created from the same class, having same attributes with different values
  of course but sharing behaviors.

=end

# Consider Car class
class Car # A class structure is defined with `class (class name)..end`

end

jimny = Car.new # We create an object(instance) of a class by calling
            # new on class
p jimny # #<Car:0x0000000104e38b18> # give us the class which object
# belongs to and an ID
p Car # Car => gives us the name of the class when inspected
