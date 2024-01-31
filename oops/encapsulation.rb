require 'byebug'
require 'rspec'
# **Encapsulation**
# - Create a `Person` class where each instance has a name and age. Ensure that the age cannot be accessed 
#   or modified directly from outside the class.
# - Implement methods to get and set the age, including checks to prevent setting an invalid age 
#   (e.g., negative values).
RSpec.describe 'Encapsulation' do
  class Person
    def initialize(name, age)
      @name = name
      @age = age 
    end

    def name
      @name = name
    end

    def age
      @age
    end

    def person_age(age)
      @age = age
    end

    def update_age(current_age)
      if current_age > 0
        @age = current_age
      else
        puts "invalid age"
      end
    end

    def display
      puts @name
      puts @age
    end

    private 
    attr_reader :name, :age
  end 

  person = Person.new("azhar", 28)
  
  it "get hide information from outside the class" do 
    person.update_age(24)
    expect(a = person.display).to eq(a)
  end

  it "get hide information from outside the class" do 
    person.update_age(-24) # for negative value
    expect(b = person.display).to eq(b)
  end
end 
