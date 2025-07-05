class MyAwesomeClass
  # `self` is prepended to a method definition, it defines a class method
  def self.this_is_a_class_method

  end

  # calling `self` outside an instance method refers to class itself
  puts self  # MyAwesomeClass
end

MyAwesomeClass.this_is_a_class_method
