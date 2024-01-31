require 'rspec'
# **Encapsulation**
# - Create a `Person` class where each instance has a name and age. Ensure that the age cannot be accessed 
#   or modified directly from outside the class.
# - Implement methods to get and set the age, including checks to prevent setting an invalid age 
#   (e.g., negative values).
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

  def update_age(current_age)
    if current_age > 0
      @age = current_age
    else
      "invalid age"
    end
  end

  def display_details
    "Name of person is #{@name} and age is #{@age}"  
  end

  private 
  attr_reader :name, :age
end 

RSpec.describe Person do 
  it "getting Encapsulaton" do 
    person = Person.new("Azhar", 27)
    expect(person.display_details).to eq("Name of person is Azhar and age is 27")
  end

  it "getting Encapsulaton" do 
    person = Person.new("Bob", -27)
    expect(person.update_age(-27)).to eq("invalid age")
  end
end
