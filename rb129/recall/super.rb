# What is output and why? What does this demonstrate about `super`?
class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class GoodDog < Animal
  def initialize(color, breed, name)
    super(name)
    @color = color
  end
end

bruno = GoodDog.new("brown", "border collie", 'Fido')
p bruno # <GoodDog:0x00007f605ab5f060 @name="Fido" , @color= "brown">
