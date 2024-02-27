require 'csv'
require 'byebug'
require './hashes_pratices/hash_practice_three.rb'
require './hashes_pratices/nested_hash.rb'

RSpec.describe "company data" do
  def csv_data
    @array ||= []
    if @array.length.zero?
      CSV.foreach(("company_data.csv"), headers: true, col_sep: ",") do |row|
        @array << row
      end
    end
    @array
  end

  it "find name of person who hold the Manager position" do
    hash = HashPracticeThree.new
    expect(hash.company_info(csv_data)).to eq({"John Doe"=>"Manager"})
  end

  it "find smiths phone number" do 
    hash = HashPracticeThree.new
    expect(hash.contact_number(csv_data)).to eq({"Jane Smith"=>["456-789-1234"]})
  end

  context "representing a school's course schedule" do 
    let(:schedule) do
              {
                "Monday" => {
                    "CSC101" => ["9:00 AM", "10:30 AM"],
                    "ENG201" => ["12:00 PM", "1:30 PM"]
                },
                "Tuesday" => {
                    "CSC101" => ["9:00 AM", "10:30 AM"],
                    "PSY301" => ["3:00 PM", "4:30 PM"]
                },
                "Wednesday" => {
                    "MAT204" => ["10:00 AM", "11:30 AM"],
                    "ENG201" => ["12:00 PM", "1:30 PM"]
                }
              }
    end

    let(:expected_output) do 
                  {
                    "Monday" => ["CSC101", "ENG201"],
                    "Tuesday" => ["CSC101", "PSY301"],
                    "Wednesday" => ["MAT204", "ENG201"]
                  }
    end

      it "course on each day" do 
        hash = HashPracticeThree.new
        expect(hash.course_each_day(schedule)).to eq(expected_output)
      end
  end

  context " ACL" do
    let(:acl) do
      { 
        "file1" => { "alice" => ["read"], "bob" => ["read", "write"]},
        "database1" => {"carol" => ["write", "delete"], "alice" => ["read"]} 
      }
    end
  
    let(:expected_acl) do
      { 
        "file1" => { "alice" => ["read", "write"], "bob" => ["read", "write"]},
        "database1" => {"carol" => ["write", "delete"], "alice" => ["read"]} 
      }
    end

    it "add permission to resource" do 
      hash = NestedHash.new
      expect(hash.add_permission("file1","alice", "write")).to eq(expected_acl)
    end
  end

  context "remove permission" do
    let(:expected_acl) do
      { 
        "file1" => { "alice" => ["read"], "bob" => ["read", "write"]},
        "database1" => {"carol" => ["write"], "alice" => ["read"]} 
      }
    end
    it "remove permission to resource" do 
      hash = NestedHash.new
      expect(hash.remove_permission("database1", "carol", "delete")).to eq(expected_acl)
    end
  end
  
  context "list_permisiion" do
    let(:expected_acl) do 
      {
        "database1"=>["read"],
        "file1"=>["read"]
      }
    end

    it "list permission" do 
      hash = NestedHash.new
    end
  end
  it "it will return true if permisiion is given" do
    hash = NestedHash.new
    expect(hash.check_access("file1", "bob", "write")).to eq(true)
  end
end
