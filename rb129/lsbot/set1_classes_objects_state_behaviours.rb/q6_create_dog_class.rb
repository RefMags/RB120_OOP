class Dog
  def initialize(name)
    @name = name
  end

  def speak
    "Woof!"
  end

  def fetch(item)
    "*wags tail* I've got the #{item}!"
  end
end

fido = Dog.new('Fido')
puts fido.speak
puts fido.fetch("ball")


=begin
- We instantiate a new `Dog` object by calling `new` to the class, this triggers
the initialize method.
- The argument passed on initialization are passed to the `initialize` method,
and we assign them to the `@name` instance variable. This is where we manage the
states of the class's objects.
- We create two instance methods, `speak` and `fetch` to display the behaviors of
the instances of the Dog.
=end
