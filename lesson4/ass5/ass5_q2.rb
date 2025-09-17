class InvoiceEntry
  attr_accessor :quantity, :product_name # changed to attr_accessor

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    self.quantity = updated_count if updated_count >= 0 # corrected to directly access the instance variable
  end
end

books = InvoiceEntry.new("Game of Thrones", 6)
puts books
# books.update_quantity(7)
books.quantity = -100
puts books.quantity
