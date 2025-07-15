class Pet
  def run
    'running!'
  end

  def jump
    'jumping!'
  end
end

class Dog < Pet
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

class Cat < Pet
  def speak
    'meow!'
  end
end

puts "This is Pet Inheritance"
p Pet.ancestors
# [Pet, Object, Kernel, BasicObject]

puts "This is Dog Inheritance"
p Dog.ancestors
# [Dog, Pet, Object, Kernel, BasicObject]
puts "This is Cat Inheritance"
p Cat.ancestors
# [Cat, Pet, Object, Kernel, BasicObject]
