class AngryCat
  def initialize(name)
    @name = name
  end

  def hiss
    puts "Hisssss!!!"
  end

  def to_s
    self
  end
end

kitty = AngryCat.new("Kitty") # we instantiate a new cat by calling `new` on the class and assigning the instance to `kitty` variable
puts kitty.to_s
