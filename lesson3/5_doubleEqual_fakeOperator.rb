class Dog
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def ==(obj)
    name == obj.name
  end
end

busta = Dog.new("Busta")
busta2 = Dog.new("Busta")

p busta == busta2
