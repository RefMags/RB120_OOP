class Television
  def self.manufacturer
    puts "Samsung"
  end

  def model
    puts "Neo QLED"
  end
end

tv = Television.new
# tv.manufacturer # throws an undefined method error for instance of `Television`
tv.model # prints the return value of the instance `model` method call.

Television.manufacturer # Print the return of the class method call
Television.model # we get a undefined method error because an instance method cannot be
            # called on a class.
