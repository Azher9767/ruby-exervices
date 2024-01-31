require 'rspec'
# **Inheritance**
# - Define a `Vehicle` class with properties like number of wheels and speed. Include a method to display the
#   vehicle's details.
# - Create two subclasses, `Car` and `Bike`, that inherit from `Vehicle`. Override the display method to 
#   include specific details relevant to each subclass.
# - Instantiate objects of `Car` and `Bike` and demonstrate how they use both parent and their own methods.
RSpec.describe 'Inheritance classes' do

  class Vehicle 
    attr_accessor :wheels, :speed

    def initialize(wheels, speed)
      @wheels = wheels
      @speed = speed
    end

    def display
      puts "Number of wheels are #{@wheels}"
      puts "speed is #{@speed}"
    end
  end 

  class Car < Vehicle # car class is inherited by Vehicle class
    attr_accessor :vehicle_name

    def initialize(wheels, speed, vehicle_name)
      super(wheels, speed)  # this super keyword, call the methods of parent class
      @vehicle_name = vehicle_name
    end

    def display
      puts "Number of wheels are #{@wheels}"
      puts "speed is #{@speed}"
      puts "vehicle name is #{@vehicle_name}"
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

    def display
      puts "Number of wheels are #{@wheels}"
      puts "speed is #{@speed}"
      puts "vehicle name is #{@vehicle_name}"
    end
  end 
  # vehicle = Vehicle.new(12, 140)
  # vehicle.display

  # car = Car.new(4, 220, "Toyoto Fortuner")
  # car.display

  # bike = Bike.new(2, 150,"Yamaha FZS")
  # bike.display
  # puts bike.vehicle_names  # calling only bike class method 
  it "class Car implementation" do
    car = Car.new(4, 220, "Toyoto Fortuner")
    expect(a = car.display).to eq(a)
  end

  it "class Bike implementation" do
    bike = Bike.new(2, 150,"Yamaha FZS")
    expect(b = bike.display).to eq(b)
  end
end 
