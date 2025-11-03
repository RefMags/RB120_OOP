class Animal
  LEGS = 4
  @@total_animals = 0

  def initialize(name)
    @name = name
    @@total_animals += 1
  end

  def self.total_animals
    @@total_animals
  end
end

class Dog < Animal
  def speak
    puts "#{@name} says Woof!"
  end
end

puts Animal.total_animals # => 0
sparky = Dog.new("Sparky")
puts Animal.total_animals # => 1
puts Dog.total_animals   # => 1
puts Dog::LEGS           # => 4

=begin
# `LEGS` constant is assigned a value of `4` to describe the number
of legs an `Animal` and any subclass of an animal has, here `Dog`.
Therefore, the constant has a lexical scope, meaning when want to reference it,
the search for reference is resolved by searching first within the class
where its initialized for example on line 25 `puts Dog::LEGS` we use the
spaceship resolution operator to reference `LEGS` from `Dog` class.
The reference search starts from within the `Dog`, doesnt find it, and into the
class inheritance chain where it finds it initialized on `Animal` class.


  The class variable `@@total_animals` is initialized in the body of the
  `Animal` class. It is scoped at class level, meaning all the subclass of
  the superclass will have reference to this variables value.
  In the instance method `initialize` we can make some modification to
  `@@total_animals` whenever a new instance is created.
  In the class method, we call `total_animals` method on the class itself
  to provide us information about the class's number of animals created along
  with the subclasses.

  Instance variable `@name` provides information about the `name` property
  of instance of either a superclass or subclass.
  - Instance variable is scoped at the level of the instance of a class.
  That is, it resolves to reference the exact value of an individual object of a
  class, when its call implementation is made within an instance method.
    The instance method encapsulate the instance variables making it possible to
    print out and see the information of the states of each individual instance
    on the outside of a class.
=end
