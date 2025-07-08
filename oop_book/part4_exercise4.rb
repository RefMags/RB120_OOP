
=begin
- print method lookup for the classes created
=end

module SelfDrivable
  def self_drive(str)
    str == "self driven" ? "I am self driving!" : "Are you a truck?"
  end
end

class Vehicle
  attr_accessor :color, :model
  attr_reader :year

  @@number_of_vehicles = 0

   def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon!"
   end

   def initialize(year, color, model)
     @year = year
     @color = color
     @model = model
     @current_speed = 0
     @@number_of_vehicles += 1
   end

    def self.number_of_vehicles
      "There are #{@@number_of_vehicles} for Vehicle class."
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
  include SelfDrivable
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


puts "----The MyCar Class----"
puts MyCar.ancestors

puts "----The MyTruck Class----"
puts MyTruck.ancestors

puts "----The Vehicle Class----"
puts Vehicle.ancestors
