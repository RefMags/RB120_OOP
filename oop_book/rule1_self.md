class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  # an instance method using `self` within class reference the calling object ie:
  # `self.name` == `sparky.name=`
  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall"
  end

  def what_is_self
    self
  end
end

# Whenever we call instance method within class we use `self`
# What does `self` represent?

sparky = GoodDog.new("Sparky", '12 inches', '10 lbs')
