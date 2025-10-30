class Car
  @@number_of_vehicles = 0

  def initialize(color)
    @color = color
    @@number_of_vehicles += 1
  end

  def self.total_cars
    @@number_of_vehicles
  end
end

jimny = Car.new('White')
runx = Car.new('Black')

p Car.total_cars
