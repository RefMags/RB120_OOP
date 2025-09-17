class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

sofi = AngryCat.new(9, "Sofi")
kitty = AngryCat.new(2, "Kitty")

p sofi
p kitty
