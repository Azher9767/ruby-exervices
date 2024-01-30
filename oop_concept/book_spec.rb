class Book
  def initialize(title, author)
    @title = title
    @author = author 
  end

  attr_reader :title, :author

  def display_details
    "#{title.capitalize} is the book, and #{author.capitalize} is the author of this book"
  end
end

RSpec.describe Book do
  it "have the title and auther property" do
    b = Book.new("Quran", "Allah")
    expect(b.display_details).to eq("Quran is the book, and Allah is the author of this book")
  end

  it "have the title and auther property" do
    b = Book.new("abc", "john cena")
    expect(b.display_details).to eq("Abc is the book, and John cena is the author of this book")
  end
end
