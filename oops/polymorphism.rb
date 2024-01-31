# **Polymorphism**
# - Define an `Animal` class with a method `speak` that returns a generic sound.
# - Create several subclasses (like `Dog`, `Cat`, `Bird`) each overriding the `speak` 
#   method to return an appropriate sound.
# - Write a script that creates instances of each animal and calls their `speak` method.

class Animal 
   def speak
      puts "Roar"
   end

   def eat 
      puts "every animal eats"
   end
end

class Dog < Animal
   def speak
      puts "Bhaw Bhaw"
   end
end

class Cat < Animal
   def speak 
      puts "Meou Meou"
   end 
end

class Bird < Animal
   def speak
      puts "whistles"
   end
end


cat = Cat.new
cat.speak
cat.eat

dog = Dog.new
dog.speak

animal = Animal.new
animal.speak