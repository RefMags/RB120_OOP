class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello") # call the instance method defined in superclass inside an instance method of subclass
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

# Case 1
hello = Hello.new
# Calling the `hi` instance method on `Hello` class instance
hello.hi # prints Hello

# Case 2
hello = Hello.new
# hello.bye # `bye` is an instance method defined in another subclass `Goodbye`
          # the instance method of `Hello` inherits `greeting` method from
          # `Greeting` class, nor does `Greeting` class have `bye` instance method since
          #  it only belongs to the subclass `Goodbye`
          # Prints an undefined method `bye`; an instance method defined in another subclass


# Case 3
hello = Hello.new
# hello.greet # We are calling the `greet` instance method, inherited via superclass
              # `Greeting`, which has an argument passed.
            # We get an error to indicate that we have not submitted the incorrect number
              # arguments to the `greet` method

# Case 4
hello = Hello.new
hello.greet("Goodbye") # prints `Goodbye` because we passed the string argument `Goodbye`.
                      # `hello` instance is a subclass to `Greetings` class so does have
                      # access to its instance method.

# Case 5
Hello.hi # we will get an erro by calling `hi` instance method directly on the class `Hello`
