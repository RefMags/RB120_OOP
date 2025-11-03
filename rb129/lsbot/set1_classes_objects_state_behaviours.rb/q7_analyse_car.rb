class Car
  attr_reader :speed

  def initialize
    @speed = 0
    @engine_status = 'off'
  end

  def start_engine
    @engine_status = 'on'
    "Engine started."
  end

  def stop_engine
    @speed = 0
    @engine_status = 'off'
    "Engine stopped."
  end

  def accelerate
    # Your logic here
    if @engine_status == 'off'
      "The engine is off."
    elsif @engine_status == 'on'
      @speed += 10
    end
  end

  def brake
    # Your logic here
    if @engine_status == 'off'
       "The engine is off."
    elsif @engine_status == 'on'
      # CONDITIONAL: decrease by 7, stop decrease if speed is 0
      # @speed = @speed > 7 ? @speed - 7 : 0
      if @speed > 7
        @speed -= 7
      else
        @speed = 0
      end
    end
  end
end

# --- Test Case ---
my_car = Car.new
puts "Initial speed: #{my_car.speed}" # => 0

puts my_car.accelerate # => "The engine is off."
my_car.start_engine    # => "Engine started."

## We are accelerating the speed twice thus adding 20mph
my_car.accelerate
my_car.accelerate
puts "Speed after accelerating twice: #{my_car.speed}" # => 20

my_car.brake
puts "Speed after braking once: #{my_car.speed}" # => 13

my_car.brake
my_car.brake
puts "Speed after braking twice more: #{my_car.speed}" # => 0 (should not be negative)


=begin
- In the `accelerate` and `brake` methods, we insert an `if/elsif` conditional
to check if `@engine_status` is either on or off.
  - We output a message `"The engine is off."` if the engine is off.
- The `eslif` quadrant of `accelerate` will increase the speed of `@instance`
variable by `10` everytime the method is called on the car object.
  - we are modifying the speed on each acceleration by increment of 10, thus we
  implement the following code ` @speed += 10`

- In the `elsif` quadrant of `brake`, we have another conditional, that is if the
`speed` is greater than 7, we can decrease the `@speed` by 7 else we return 0 and
a constraint that we shouldnt return a negative.
  - Similar to `accelerate`, we modify the `@speed` value, only here decreasing by
  7.

=end
