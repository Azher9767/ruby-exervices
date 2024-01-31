class Author 
  def books 
    []
  end
end

RSpec.describe "Author and book relation" do 
  context "Implementation of classes" do 
    it "can add class Author" do 
      author = Author.new
      expect(author.books).to eq([])
    end
  end
end