class Parent
  def greet
    "Hello from Parent."
  end
end

class Child < Parent
  def greet
    "#{super} And hello from Child."
  end
end

puts Child.new.greet

# The output is => "Hello from Parent. And hello from Child."
# The method `greet` is overridden from the superclass parent and customized to the
# subclass, `Child`, we call `super` via string interpolation and add more string
# to the statment. `super` invokes the implementation of a method with a similar
# name that is inherited from `Parent` superclass.
# Because we override, `greet`, `super` will implement and output the `greet` return
# from the parent class because its called on an instance method of a similar name.

#
