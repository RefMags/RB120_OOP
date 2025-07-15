class Dog
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end
end

class  Bulldog < Dog
  def swim
    "can't swim!"
  end
end


=begin
 - Create a subclass from Dog
  - Call it `Bulldog` overriding the swim method to return `can't` swim.
=end
teddy = Dog.new
# puts teddy.speak           # => "bark!"
# puts teddy.swim           # => "swimming!"

spike = Bulldog.new
puts spike.speak # spike speaks because of inheritance from `Dog` class
puts spike.swim # spike inherits `swim` from `Dog` but overrides to indicate its limitations.
