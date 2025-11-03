class Character
  attr_reader :name, :health

  def initialize(name, is_mage)
    @name = name
    @health = 100
    @mana = is_mage ? 100 : 0 # Source of the error
  end

  def cast_fireball(target)
    # This check causes a crash for non-mages
    if @mana >= 20
      @mana -= 20
      "#{name} casts Fireball at #{target}!"
    else
      "Not enough mana!"
    end
  end
end

# --- Test Case ---
warrior = Character.new("Grog", false)
p warrior # #<Character:0x0000000100ac6858 @name="Grog", @health=100, @mana=0>
puts warrior.cast_fireball("a goblin") # Not enough mana!

=begin
- The code fails as a result of the following code: `@mana = 100 if is_mage`,
we leave out the `@mana` state for non-mage characters if we only assign 100 to
mage characters.
we can confirm that `@mana` state is left out when we inspect object with `p warrior`
which will output: `#<Character:0x0000000100a36870 @name="Grog", @health=100>`.

- Thus when we call `cast_fireball` method, on `warrior` we get an error as a result
of unidentified method. Note that instance methods encapsulate state that we can
control its modification from. Within the `cast_fireball` method, we implement
a check of `@mana` state, this is not available in `warrior` thus `nil` and an
error message. (`>=` method is not available to Nil class for comparison check).

- To correct this, we need to change how `@mana` state is initialized by giving
100 to mage characters and 0 to non-mage characters.

=end
