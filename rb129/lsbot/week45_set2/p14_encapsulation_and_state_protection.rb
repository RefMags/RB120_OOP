class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  private
  attr_writer :balance
end

my_account = BankAccount.new(100)
my_account.balance = -50 # This should not be allowed
puts my_account.balance

# we protect the `@balance` by first changing the `attr_accessor` on line 2 to
# `attr_reader` to only allow for the getter method to be accessible outside the class
# and make the setter method `attr_writer` (that modifies the balance) to be placed
# under `private` keyword thus protecting setter method `balance=` from being called
# on the outside.
# `attr_accessor` embodies both the getter and setter method initially allowing
# both the setter and getter to be called outside the class.
