# Modifying class defin. to allow the other method,

class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
   parts = full_name.split  # class parses the `full_name` string into `first_name` na d `last_name` to store them separately inside the object
    @first_name = parts.first # set instance variable for `@first_name`
    @last_name = parts.size > 1 ? parts.last : ''
  end

  def name
    "#{first_name} #{last_name}".strip
  end
end

bob = Person.new('Robert GG')
p bob.name                  # => 'Robert'
p bob.first_name            # => 'Robert'
p bob.last_name             # => ''
bob.last_name = 'Smith'
p bob.name                  # => 'Robert Smith'
