# class Animal
# end

# class Dog < Animal
#   def initialize(name)
#     @name = name 
#   end
# end
# p Dog.ancestors
#==========================================

# module Speak
#   def speak(sound)
#     sound 
#   end
# end

# class Tiger
#   include Speak 
# end

# class Dog 
#   include Speak 
# end

# tiger = Tiger.new 
# p tiger.speak("Roar")

# dog = Dog.new 
# p dog.speak("Bark")
    # puts "tigers class ancestors are"
    # p Tiger.ancestors
    # puts ""
    # p Dog.ancestors
#==============================================================
# **Namespacing**
# module Animal 
#   class Dog 
#     def speak(sound)
#       sound 
#     end 
#   end

#   class Cat 
#     def speak(sound)
#       sound 
#     end
#   end
# end

# dog = Animal::Dog.new
# p dog.speak("barking")
# cat = Animal::Cat.new
# cat.speak("Meou")
#==============================================================
module Readable 
  def read 
    "i am reading a book"
  end
end

module Walkable
  def walk 
    "I am walking"
  end
end

module Eatable
  def eat 
    "i am eating"
  end
end

class Animal
  include Walkable

  def speak
    "I am Animal, and I can speak"
  end
end

class Dog < Animal
  def speak
    " I am dog and I can bark"
  end
end

dog = Dog.new
p dog.speak
p dog.walk
