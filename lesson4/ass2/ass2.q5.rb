class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

apple = Fruit.new("Red apple")
p apple

margarita = Pizza.new("Margarita")
p margarita
