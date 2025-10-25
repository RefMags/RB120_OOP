class Person
  attr_reader :first_name
  attr_accessor :last_name

  def initialize(first_name, last_name='')
    @first_name = first_name
    @last_name = last_name
  end

  def name
    @first_name + @last_name
  end

end

bob = Person.new('Robert')
p bob.name  # getter name                # => 'Robert'
p bob.first_name    # getter first_name        # => 'Robert'
p bob.last_name     # getter last name      # => ''
bob.last_name = 'Smith' # setter last_name
p bob.name   # combined the  first and last name              # => 'Robert Smith'
