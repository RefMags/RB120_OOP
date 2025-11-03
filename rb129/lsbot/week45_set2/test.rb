# Design a Sports Team

# - Include 4 players (attacker, midfielder, defender, goalkeeper)
# - All the players’ jersey is blue, except the goalkeeper, his jersey is white with blue stripes
# - All players can run and shoot the ball.
# - Attacker should be able to lob the ball
# - Midfielder should be able to pass the ball
# - Defender should be able to block the ball
# - The referee has a whistle. He wears black and is able to run and whistle.

# classes : SportTeam, state = jersey, run
              # Player can * shoot
            # Attacker
              # lob
            # Midfielder,
              # pass
            # Defender,
             # block

             # Diffentira
            # goalkeeper,

            # Not a player
            # Referee
              # whistle

module Shootable
  def shoot
   # some code
  end
end

module Glove
  def glove
    @glove = true
  end
end

class Sportsteam
  def initialize()
    @team = [Attacker.new, Attacker.new, Midfielder.new, Defender.new]
  end

  def play
  end
end

class Player
  attr_reader :jersey_color

  def initialize
    @jersey_color = "blue"
  end

  def run
    # some code
  end
end

class Attacker < SportTeam
  include Shootable

  def lob
    # some method
  end
end

class Midfielder < SportTeam
  include Shootable
  def pass
   # some code
  end
end

class Defender < SportTeam
  include Shootable

  def block
    # some code
  end
end

class Goalkeeper < SportTeam
  include Shootable

  def initialize
    @jersey_color = "white with bluestripes"
    @glove = "blue"
  end
end

class Referee < SportTeam
  def initialize
    @jersey_color = 'black'
    @glove = "black"
  end

  def whistle
    # some code
  end
end

attacker = Attacker.new
midfielder = Attacker.new

goal_keeper = Goalkeeper.new
p goal_keeper

referee = Referee.new
p referee
