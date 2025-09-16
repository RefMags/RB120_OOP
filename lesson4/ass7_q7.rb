class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  # def light_status
  #   "I have a brightness level of #{brightness} and a color of #{color}"
  # end

  # Change to
  def status
    "I have a brightness level of #{brightness} and a color of #{color}"
  end

end
# its unclear and repetitve to read `my_light.light_status` (too repetitive)
# instead # `my_light.status`
