module Swimmable
end

class Animal
end

class Bird < Animal
end

class Penguin < Bird
  include Swimmable
end

p Penguin.ancestors
# Ruby checks the following classes =>[Penguin, Swimmable, Bird, Animal, Object, Kernel, BasicObject]
