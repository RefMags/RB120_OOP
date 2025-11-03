class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def celebrate_birthday
    @age += 1
    puts "Happy Birthday! You are now #{@age} years old."
  end

  def introduce
    puts "Hi, my name is #{@name}."
  end
end


=begin
  - The states of theh object are; name and age
  Because in Ruby, we assign the state an instance variable which
  can be identified with `@` typically initialized in an `initialize`
  method that receives the arguments when a new instance is initialized.
  * Here the states are `@name` and `@age`.

  - The behaviors describes what an instance of an object can do, decribed as
    instance methods.
    Here two methods created that describes what an instance of `Person`
    class can do namely through the following methods:
      * `celebrate_birthday`
      * `introduce`
    - When these methods are invoked on the instance, they will print messages
    according to the implementation of the string interpolation within them.

=end
