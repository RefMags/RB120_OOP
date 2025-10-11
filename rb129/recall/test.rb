# What does `self` refer to in Ruby?

# all clients should be defaulted to "normal" clients
# some client types should have special positions, like "vip"

class Client
  p self

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.position
    puts ""
  end

  def say_hi
    name = 'foo'
    puts "#{self.name} says hi"
  end
end

client1 = Client.new('Sara Smith')

# p client1.info

client1.say_hi

Client.position
