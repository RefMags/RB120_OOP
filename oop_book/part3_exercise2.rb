# Override the `to_s` method to create a user friendly print out of the object, ie readbility
#
class MyCar
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

   # Override `to_s` method to create a friendly meaningful string. Without this override we only get `#<MyCar:0x00007fbbd77f73b8>`
   def to_s
    "My car is a #{color}, #{year}, #{model}."
   end
end

# Call the `gas_mileage` method on the MyCar
MyCar.gas_mileage(15, 351)
jimny = MyCar.new(2026, "white", "Jimny JC")
puts jimny
