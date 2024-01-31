=begin
Composition in a Car-Engine Relationship:

Problem: Define a Car class and an Engine class in Ruby, where a Car is composed of one Engine. 
The Engine class should have methods like start and stop. When a Car is destroyed, its associated Engine 
should also be destroyed.
Coding Task: Implement the Car and Engine classes with the described methods. Show how creating and destroying
 a Car object will also create and destroy the associated Engine object.
=end

class Car 
  def start
    "car started"
  end

  def stop 
    "car stop"
  end
end

class Engine 
  def start 
    "Engine start"
  end
end

RSpec.describe "Car and engine relationship" do 
  context "Implement car class" do
    it "implement car class and its method" do 
      car = Car.new
      expect(car.start).to eq("car started")
    end

    it "implement car class and its method" do
      car = Car.new 
      expect(car.stop).to eq("car stop")
    end
  end

  context "implement Engine class" do 
    it "implement engine class and its methods" do 
      engine = Engine.new
      expect(engine.start).to eq("Engine start")
    end

    it "implement engine class and its method" do 
      engine = Engine.new 
      expect(engine.stop).to eq("engine stop")
    end
  end
end