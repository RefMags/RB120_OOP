module Capable
  def run
    'running!'
  end

  def jump
    'jumping!'
  end
end

class Dog
  include Capable

  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end

  def fetch
    'fetching!'
  end
end

class Cat
  include Capable
  def speak
    'meow!'
  end
end

teddy = Dog.new
puts teddy.run

sophie = Cat.new
puts sophie.jump
puts sophie.swim
