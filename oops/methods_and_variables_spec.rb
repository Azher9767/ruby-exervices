# **Class Methods and Variables**
#    - Create a `Calculator` class with a class variable that keeps track of the number of calculations made.
#    - Add class methods for different mathematical operations (addition, subtraction, etc.).
#    - Every time a calculation is made, update the count and provide a method to retrieve the total number
#      of calculations.
class Calculator
  @@number_of_calculations = 0

  def self.addition(a, b)
    a + b
    @@number_of_calculations += 1
  end

  def self.subtraction(a, b)
    a - b
    @@number_of_calculations += 1
  end 

  def self.multiplication(a, b)
    a * b
    @@number_of_calculations += 1
  end

  def self.division(a, b)
    a/b
    @@number_of_calculations += 1
  end

  def self.total_calculation
    @@number_of_calculations
  end
end


RSpec.describe Calculator do
   
  it "Total number of calculation count" do 
    Calculator.addition(1,1)
    expect(Calculator.total_calculation).to eq(1)
  end

  it "Total number of calculation count" do 
    Calculator.subtraction(45, 43)
    expect(Calculator.total_calculation).to eq(2)
  end

  it "Total number of calculation count" do 
    Calculator.multiplication(4, 7)
    expect(Calculator.total_calculation).to eq(3)
  end

  it "Total number of calculation count" do 
    Calculator.division(18, 12)
    expect(Calculator.total_calculation).to eq(4)
  end
end