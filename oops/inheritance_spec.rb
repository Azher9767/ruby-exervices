require 'rspec'
# **Inheritance**
# - Define a `Vehicle` class with properties like number of wheels and speed. Include a method to display the
#   vehicle's details.
# - Create two subclasses, `Car` and `Bike`, that inherit from `Vehicle`. Override the display method to 
#   include specific details relevant to each subclass.
# - Instantiate objects of `Car` and `Bike` and demonstrate how they use both parent and their own methods.
class Vehicle 
  attr_accessor :wheels, :speed

  def initialize(wheels, speed)
    @wheels = wheels
    @speed = speed
  end

  def display_details
    "Number of wheels are #{@wheels} and speed is #{@speed} and vehicle name is #{@vehicle_name}"
  end
end 

class Car < Vehicle # car class is inherited by Vehicle class
  attr_accessor :vehicle_name

  def initialize(wheels, speed, vehicle_name)
    super(wheels, speed)  # this super keyword, call the  call the methods of parent class
    @vehicle_name = vehicle_name
  end

  def display_details
    "Number of wheels are #{@wheels} and speed is #{@speed} and vehicle name is #{@vehicle_name}"
  end
end 

class Bike < Vehicle  # Bike class is inherited by vehicle class
  attr_accessor :vehicle_name

  def initialize(wheels, speed,vehicle_name)
    super(wheels,speed)  # this super keyword, call the  call the methods of parent class
    @vehicle_name = vehicle_name
  end

  def vehicle_names
    @vehicle_name = vehicle_name
  end

  def display_details
    "Number of wheels are #{@wheels} and speed is #{@speed} and vehicle name is #{@vehicle_name}"
  end
end 

RSpec.describe Vehicle do 
  it "specific details of subclass" do
    car = Car.new(4, 220, "Thar")
    expect(car.display_details).to eq("Number of wheels are 4 and speed is 220 and vehicle name is Thar")
  end

  it "specific details of subclass" do
    car = Car.new(4, 220, "Maruti Ciaz")
    expect(car.display_details).to eq("Number of wheels are 4 and speed is 220 and vehicle name is Maruti Ciaz")
  end

  it "specific details of subclass" do
    bike = Bike.new(2, 150, "Yamaha FZS")
    expect(bike.display_details).to eq("Number of wheels are 2 and speed is 150 and vehicle name is Yamaha FZS")
  end
end
