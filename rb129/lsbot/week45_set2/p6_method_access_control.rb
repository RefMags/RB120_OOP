class Robot
  def initialize(name)
    @name = name
  end

  def report_status
    puts "Status OK."
    perform_self_diagnostic
  end

  protected

  def serial_number
    "123-ABC"
  end

  private

  def perform_self_diagnostic
    puts "Running diagnostics..."
  end
end

walle = Robot.new("Wall-E")

# Method invocations to analyze:
walle.report_status
# walle.perform_self_diagnostic
walle.serial_number


=begin
1. line 27 outputs(each on a new line)
  => "Status OK."
  => "Running diagnostics..."
  Because `report_status` method is public method accessible outside the class.
  It is also possible to output the implementation of `perfrom_self_diagnostic`
  because of it being implemented within the `report_status` method thats public.

2. However, calling `perform_self_diagnostic` directly on an instance outside
the class will raise an error(NoMethodError) that the method is private and is
not accessible.
- methods defined below `private` keyword are not accessible outside the class.

3. Calling `serial_number` method which is under `protected` keyword will also
throw a NoMethodError error because method is protected when called on an
 object outside the class. `protected` methods
just like `private` are also restricted in terms of their access outside the class.
=end
