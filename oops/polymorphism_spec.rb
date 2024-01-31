require 'rspec'
# **Polymorphism**
# - Define an `Animal` class with a method `speak` that returns a generic sound.
# - Create several subclasses (like `Dog`, `Cat`, `Bird`) each overriding the `speak` 
#   method to return an appropriate sound.
# - Write a script that creates instances of each animal and calls their `speak` method.
class Animal 
  def speak
    "Noise"
  end
end

class Dog < Animal
  def speak
    "Bhaw Bhaw"
  end
end

class Cat < Animal
  def speak 
    "Meou Meou"
  end 
end

RSpec.describe Animal do 
  it "achieving polymorphism for class Animal" do 
    animal = Animal.new
    expect(animal.speak).to eq("Noise")
  end

  it "achieving polymorphism class Dog" do 
    dog = Dog.new
    expect(dog.speak).to eq("Bhaw Bhaw")
  end

  it "achieving polymorphism for class Cat" do 
    cat = Cat.new
    expect(cat.speak).to eq("Meou Meou")
  end
end
