# Why do we get this error and how do we fix it?
#
class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"

# Error: test.rb:9:in `<main>': undefined method `name=' for
  #<Person:0x007fef41838a28 @name="Steve"> (NoMethodError)
  #

# # Error is a result of `attr_reader` only creating a getter method.
# When reassigning the name instance variable to `Bob`, we need a setter method called `name=`.
# We can do this by changing the `attr_reader` to `attr_accessor` or `attr_writer` if we dont intend to use the getter functionality.
#

class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
puts bob.name
bob.name = "Bob"
puts bob.name
