# Create  a few more peole
class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    parts = full_name.split
    @first_name = parts.first
    @last_name = parts.size > 1 ? parts.last : ''
  end

  def name
    "#{first_name} #{last_name}".strip
  end

  def name=(full_name)
    parse_full_name(full_name)
  end

  def to_s
    name
  end

  private

  def parse_full_name(full_name)
    parts = full_name.split
    @first_name = parts.first
    @last_name = parts.size > 1 ? parts.last : ''
  end
end

bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}." # =>  "The person's name is: #<Person:0x0000000101266478>"

# alternatives

puts "The person's name is: #{bob.name}."
puts "The person's name is: " + bob.name

bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}"
