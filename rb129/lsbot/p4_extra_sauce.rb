 module ExtraSauce
  def describe
    "A #{super} with extra sauce"
  end
 end

class HotDog
 attr_reader :condiments
 def initialize
    @condiments = "ketchup and mustard"
 end

 def describe
  "hot dog with #{condiments}"
 end
end

tasty_hot_dog = HotDog.new
tasty_hot_dog.extend(ExtraSauce)
puts tasty_hot_dog.describe # => A hot dog with ketchup and mustard with extra sauce
