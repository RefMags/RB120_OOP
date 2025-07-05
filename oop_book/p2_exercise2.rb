class MyCar
  attr_accessor :color
  attr_reader :year

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
end

jimny = MyCar.new(2026, "white", "Jimny JC")
jimny.color = "silver"
puts jimny.color
puts jimny.year
