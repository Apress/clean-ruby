class Book
  attr_accessor :name

  def initialize(name)
    self.name = name
  end
end

class Library
  attr_accessor :books


  def initialize(books)
    self.books = books
  end

  def is_not_found(book)
    found = self.books.include?(book)
    !found
  end
end

book1 = Book.new('Ready Player One')
book2 = Book.new('Armada')

books = [book1, book2]
library = Library.new(books)

if !library.is_not_found(book2)
  puts "#{book2.name} is in the library"
end
