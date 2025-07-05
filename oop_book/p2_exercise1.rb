class MyCar
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
     puts "Current speed is #{@current_speed}.s"
   end

   def shut_off
    @current_speed = 0
     puts "Let's chill! What a trip!"
   end

   def spray_paint(color)
     self.color = color
     puts "Your new #{color} paint job slooks great!"
   end
end

jimny = MyCar.new(2026, "white", "Jimny JC")
jimny.speed_up(50)
jimny.current_speed
jimny.speed_up(50)
jimny.current_speed
jimny.brake(40)
jimny.current_speed
jimny.shut_off
jimny.current_speed
