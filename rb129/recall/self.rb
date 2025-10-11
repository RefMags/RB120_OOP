# self in instance method
class Client
  attr_accessor :name

  def info(given_name)
    self.name = given_name # we prefix `self` to `name` instance that is encapsulated in the `attr_accessor` instance method to reassign the `name` of `bob` instance.
    puts "The name of client is #{name}" # then we use string interpolation to print a message with the client's name. Note that using the getter method can be used by just calling `name` without prefixing `self` compared to the setter methods.
    # The reason is that if we only wrote `name = given_name` Ruby treats that as an initialization of a local variable, `self` makes it explicit that we are referencing the `bob` instance to perform the reassignment.
  end
end

bob = Client.new
bob.info("Bob") # The name of client is Bob

# self in class methods

class Client
  @@total_client_count = 0

  def initialize
    @@total_client_count += 1
  end
  def self.total_clients
    @@total_client_count
  end
end

Client.new
Client.new
p Client.total_clients # 2
