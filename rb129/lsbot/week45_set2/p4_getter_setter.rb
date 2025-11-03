class Computer
  attr_accessor :model
  attr_reader :model
  attr_writer :model

  def initialize(model)
    @model = model
  end

  def model
    @model
  end

  def model=(new_model)
    @model = new_model
  end
end


macbook_air = Computer.new('mac air')
puts macbook_air.model # => mac air
macbook_air.model = 'mac_pro'
puts macbook_air.model #=> mac_pro
