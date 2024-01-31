class Author 
  def initialize
    @books = []
  end

  def books 
    @books
  end

  def add_book(book)
    @books << book
  end
end

class Book  
end

RSpec.describe "Author and book relation" do 
  context "Implementation of classes" do 
    it "can add class Author" do 
      author = Author.new
      expect(author.books).to eq([])
    end

    it "can add a book in Author class" do 
      author = Author.new
      expect(author.add_book("Book1")).to eq(["Book1"])
    end
  end

  context "implementation of class another class" do 
    it "can add class and their methods" do 
      book = Book.new

    end
  end
end
