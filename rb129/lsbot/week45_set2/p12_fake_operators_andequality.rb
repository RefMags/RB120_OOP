class Book
  attr_reader :author, :title

  def initialize(author, title)
    @author = author
    @title = title
  end

  # Your implementation of == here
  def ==(other)
    author == other.author && title == other.title
  end
end

book1 = Book.new("J.K. Rowling", "Harry Potter")
book2 = Book.new("J.K. Rowling", "Harry Potter")
book3 = Book.new("George Orwell", "1984")

puts book1 == book2 # Should return true
puts book1 == book3 # Should return false
