# Your Drivable module here
module Drivable
  def drive
    puts "Vroom!"
  end
end

class Truck
  include Drivable
end

class Motorcycle
  include Drivable
end

my_truck = Truck.new
my_truck.drive # Should output "Vroom!"

my_moto = Motorcycle.new
my_moto.drive # Should output "Vroom!"
