require 'rspec'

  #   **Basic Class and Object Creation**
  #  - Create a `Book` class. Each book should have a title, author, and a method to display 
  #    the book's details.
  #  - Write a script to create instances of the `Book` class and display their details.
  class Book
    def book_details
      title = "Wings of Fire"
      puts "Title of book is => #{title}"
      author = "Dr. A. P. J. Kalam"
      puts "Author is #{author}"
    end

    def book_details2
      title = "I can do it"
      puts "Title of book is => #{title}"
      author = "Shiv Khera"
      puts "Author is #{author}"
    end
  end

  RSpec.describe Book do
    subject(:book) { described_class.new }

    it "all books" do

      expect(book.book_details).to eq("g")
    end

    xit "all books" do
      expect(x = book.book_details2).to eq(x)
    end
  end
  # class Book
  #   def book_details
  #     title = "Wings of Fire"
  #     puts "Title of book is #{title}"
  #     author = "Dr. A. P. J. Kalam"
  #     puts "Author is #{author}"
  #   end

  #   def book_details2
  #     title = "I can do it"
  #     puts "Title of book is #{title}"
  #     author = "Shiv Khera"
  #     puts "Author is #{author}"
  #   end
  # end
  # book = Book.new 
  # book.book_details
  # book.book_details2
