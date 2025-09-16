class LivingThing
	def movement
	  "I can move."
	end
end

class Animal < LivingThing
  attr_accessor :animal

  def initialize(a)
    self.animal = a
  end

  def movement
    "#{self.animal} sprints."
  end
end
class Human < LivingThing; end

puts cheetah = Animal.new("Cheetah").movement # I can move.
puts jon = Human.new.movement # I can move.
