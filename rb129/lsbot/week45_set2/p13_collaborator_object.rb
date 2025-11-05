class Orchestra
  attr_reader :violinist

  def initialize(name)
    @name = name
    @violinist = [Violinist.new('Sarah')]
  end
end

class Violinist
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

symphony = Orchestra.new('Symphony')
p symphony

# Inside the array of `@violinist` instance, we create an array and instantiate
# several instances of `Violinist` instances such that when we instantiate
# an `Orchestra` instance we have the violinist array populated. only `Sarah` is
# used here as an example.
#
#
