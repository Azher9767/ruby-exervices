# # class Calculator
# #   @@count = 1

# #   def self.increament
# #     @@count += 1
# #   end

# # end

# # p Calculator.increament

# class Name
#   def public_method
#     puts "this public method"
#     protected_method
#     private_method
#   end

#   protected 
#   def protected_method
#     puts "this is protected method"
#   end

#   private
#   def private_method
#     puts "this is private method"
#   end
# end

# # n = Name.new
# # n.protected_method
# # n.private_method
# class Child < Name
#   def siblings
#     private_method
#   end
# end
# child = Child.new
# child.siblings


class Person
  @@count = 0
  def initialize
    @@count += 1 
  end 

  def count
    @@count 
  end
end

class PersonName
end

3.times { person = Person.new} 
person = Person.new
p person.count
