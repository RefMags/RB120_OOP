class Gadget
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def display_info
    puts "Gadget Info: #{self.name}"
  end

  def self.class_method
    puts "This is a class method for #{self}."
  end
end

gadget = Gadget.new("Gizmo")
gadget.display_info # => "Gadget Info: Gizmo"
Gadget.class_method # => "This is a class method for Gadget."

#line 9 `self`
#=> references the instance of the class ie, `gadget` because it is called in a
#instance method.
#
# line 12
# => references the class itself, and is identified by the method def syntax.
#
#
