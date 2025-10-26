
module Supervisable
  def supervise; end
end


class Preschool
  def initialize
    @attendees = []
  end

  def <<(attendees)
    @attendees << attendees
  end
end

class Person
  def each_lunch; end
end

class Caretaker < Person # can we have this as a module?

  # How can we make `kid` available?
  def initialize(kid)
    @kid = kid
  end

  def help_schoolwork(kid) # or pass the kid as an argument
    kid.understanding = "unconfused" # making the kid available here
  end

  def watch_playground; end
end

class Teacher < Caretaker
  include Supervisable
  def teach ; end
end

class Assistant < Caretaker
  def help_kids; end
end

class Principal
  include Supervisable
  def expel
  end
end


class Janitor < Person
  def clean; end
end
class CafeteriaWorker < Person
  def serve_lunch; end
end


class Kid < Person
  attr_accessor :understanding

  def initialize
    @understanding = "confused"
  end

  def learn; end
  def play; end
end
