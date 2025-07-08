#Create a superclass called Vehicle for your MyCar class to inherit from and move
#the behavior that isn't specific to the MyCar class to the superclass.
#Create a constant in your MyCar class that stores information about the vehicle
#that makes it different from other types of Vehicles.

#Then create a new class called MyTruck that inherits from your superclass that
#also has a constant defined that separates it from the MyCar class in some way.
=begin
A superclass Vehicle
  - create a behavior thats not specific to MyCar eg: manufacture
Subcalss MyCar
  - A constant that store information about the vehicle making it different
  from other cars ie plate number

Subclass MyTruck
  - A constant separating it from MyCar class
=end

class Vehicle
  attr_accessor :color, :model
  attr_reader :year

   def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon!"
   end

   def initialize(year, color, model)
     @year = year
     @color = color
     @model = model
     @current_speed = 0
   end

   def speed_up(number)
     @current_speed += number
     puts "Accelerating to #{@current_speed}."
   end

   def brake(number)
     @current_speed -= number
     puts "Decelerating to #{@current_speed}."
   end

   def current_speed
     puts "Current speed is #{@current_speed}"
   end

   def shut_off
     puts "Let's chill! What a trip!"
   end

   def spray_paint(color)
     self.color = color
     puts "Your new #{color} paint jobs looks great!"
   end
end

class MyCar < Vehicle
   PLATE_NUMBER = "00:11"
   # Override `to_s` method to create a friendly meaningful string. Without this override we only get `#<MyCar:0x00007fbbd77f73b8>`
   def to_s
    "My car is a #{color}, #{year}, #{model}."
   end
end


class MyTruck < Vehicle
  PLATE_NUMBER = "00:11"

  def to_s
    "My truck is a #{color}, #{year}, #{model}."
  end
end


my_car = MyCar.new(2026, "white", "Jimny JC")
my_truck = MyTruck.new(2028,'white', 'Ford Tundra')

puts my_car
puts my_truck
