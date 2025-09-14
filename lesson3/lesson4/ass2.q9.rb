class Bag
  def initialize(color, material)
    @color = color
    @material = material
  end
end

backpack = Bag.new("blue", "leather")
puts backpack
