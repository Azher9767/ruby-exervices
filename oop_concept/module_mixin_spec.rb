module Drivable
  def drive 
    "I am drivable"
  end
end

class Car 
  include Drivable 
  def speed    # this method is my asssumption
    "Speed of car is high"
  end
end

class Truck 
  include Drivable
  def load    # this method is my asssumption
    "Truck is loaded"
  end
end

RSpec.describe Drivable do 
  it "mixin of class Car and module Drivabel" do
    car = Car.new
    expect(car.drive).to eq("I am drivable")
    expect(car.speed).to eq("Speed of car is high")   # this is my asssumption
  end

  it "mixin of class Truck and module Drivable" do 
    truck = Truck.new
    expect(truck.drive).to eq("I am drivable")
    expect(truck.load).to eq("Truck is loaded")# this is my asssumption
  end
end
