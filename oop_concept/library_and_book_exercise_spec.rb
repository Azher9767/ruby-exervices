require 'byebug'
# **Association, Aggregation, and Composition**
#    - Implement classes representing a `Library` and `Book`. A library should have a list of books.
#    - Demonstrate association (a library has many books), aggregation (books can exist independently 
#      of a library), and composition (if a library is deleted, its books should also be deleted).
class Library
  def initialize
    @books = []
  end

  def books
    @books
  end

  def add_book(book)
    @books << book
    book
  end

  def delete_book
    @books.delete_at(0)
    @books
  end
end

class Book 
end

RSpec.describe Library do 
  context "list of books" do 
    it "returns empty array" do
      library = Library.new
      expect(library.books).to eq([])
    end

    it "return all books" do 
      library = Library.new
      book = Book.new
      library.add_book(book)
      expect(library.books).to eq([book])
    end
  end

  context "addition of books" do 
    it "adds a book" do 
      library = Library.new
      book = Book.new
      expect(library.add_book(book)).to eq(book)
    end
  end

  context "deletion of books" do 
    it "delete a book" do 
      library = Library.new 
      expect(library.delete_book).to eq([])
    end
  end
end