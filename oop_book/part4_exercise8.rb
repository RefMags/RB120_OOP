=begin
`  NoMethodError: private method `hi' called for #<Person:0x007ff61dbb79f0>
from (irb):8
from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'`

- the above error give a private method `hi` because the method is protected from the
public.

there are two ways to make it possible for the object to have access:
1. removing method from under the private
2. Access some of the functionality of private `hi` by calling it in some method
above the private hi
=end

class Greeting
  def public_hi
    hi
  end

  private
  def hi
    "hi!"
  end
end

casual = Greeting.new
# casual.hi # throws an error
puts casual.public_hi
