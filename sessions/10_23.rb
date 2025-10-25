# What is the difference in behavior between the `Dog` and `Cat` classes' `speak` methods? What will be the output of this code and why does `super` behave differently in each case?   

 class Animal
    def speak(sound)
      "The animal says '#{sound}'"
    end

    def walk
      "The animal walks"
    end
 end

class Dog < Animal
  def speak(sound)
   super + " very loudly."
  end
end

class Cat < Animal
  def speak
   super("meow") + " quietly."
  end

  def walk
    super + " testing"
  end
end

puts Dog.new.speak("woof")  #"The animal says 'woof' very lougly '"
puts Cat.new.speak
puts Cat.new.walk


# Modules are for sharing behavior, not state. What will the following code output? Explain why the `describe` method works for an instance of `Thing` but produces a different result for an instance of `Item`.

   module Describable
      def describe
        "This is a #{self.class} with name: '#{@name}'."
      end
    end

    class Thing
      include Describable
      attr_accessor :name

      def initialize(name)
        @name = name
      end
    end

    class Item
      include Describable

      def initialize
        # @name is not initialized
      end
    end

    thing = Thing.new("Widget")
    puts thing.describe # "This is a Thing with name: 'Widget'."

    item = Item.new
    puts item.describe


    #  Explain the difference between `private` and `protected` method access control. Provide a code example where a `protected` method is useful.

class Bicycle
  attr_reader :brand

  def initialize(brand, production_cost, customer_cost)
    @brand = brand
    @production_cost = production_cost
    @customer_cost = customer_cost
  end

  def ==(other)
    customer_cost == other.customer_cost
  end

  # def estimated_pro_cost
  #   self.production_cost += 1000
  # end

  protected
  attr_reader :customer_cost

  # private
  # attr_writer :production_cost
end

merida = Bicycle.new('Merida', 2000, 10000)
surly = Bicycle.new('Surly', 3000, 10000)

puts merida == surly

# ​Question​: What does the following code output and why? This demonstrates method overriding.

 class Animal
      def move
        "I can move."
      end
    end

 class Bird < Animal
    def move
        "I can fly."
      end
end

puts Bird.new.move

# What is the output of the following code? Explain the behavior of class variables within an inheritance structure.

    class Vehicle
      @@count = 0

      def self.get_count
        @@count
      end

      def initialize
        @@count += 1
      end
    end

    class Car < Vehicle; end

    class Truck < Vehicle
      @@count = 5 # This line is key
    end

    Car.new
    Car.new
    Truck.new

    puts "Vehicle count: #{Vehicle.get_count}" # 8
    puts "Car count: #{Car.get_count}" # 2
    puts "Truck count: #{Truck.get_count}" # 6
