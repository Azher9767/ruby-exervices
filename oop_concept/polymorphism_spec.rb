class Animal 
  def speak(sound)
    "Animal sound like #{sound}"
  end
end

class Dog < Animal
  def speak(sound)
    "Dog sound like #{sound}"
  end
end

class Cat < Animal
  def speak(sound)
    "Cat sound like #{sound}"
  end 
end

RSpec.describe Animal do 
  it "achieving polymorphism for class Animal" do 
    animal = Animal.new
    expect(animal.speak("wow")).to eq( "Animal sound like wow")
  end

  it "achieving polymorphism class Dog" do 
    dog = Dog.new
    expect(dog.speak("bhaw bhaw")).to eq( "Dog sound like bhaw bhaw")
  end

  it "achieving polymorphism for class Cat" do 
    cat = Cat.new
    expect(cat.speak("meou meou")).to eq( "Cat sound like meou meou")
  end
end
