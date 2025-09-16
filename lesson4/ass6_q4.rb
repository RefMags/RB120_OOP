class Greeting
  def greet(saying)
    puts saying
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end


hello = Hello.new
hello.hi

goodbye = Goodbye.new
goodbye.bye
