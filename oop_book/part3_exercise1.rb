# Add class method to `MyCar` class that calculates gas mileage
class MyCar
  attr_accessor :color
  attr_reader :year

   # Add a class method to your MyCar class that calculates the gas mileage of any car.
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


# Call the `gas_mileage` method on the MyCar
MyCar.gas_mileage(15, 351)
