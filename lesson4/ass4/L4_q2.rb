class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end

  def self.hi
    greeting = Hello.new
    greeting_msg = greeting.greet("Hello")
    greeting_msg
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

hello = Hello.new
puts hello.hi

# Hello.ancestors
