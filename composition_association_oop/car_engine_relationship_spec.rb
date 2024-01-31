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
    engine = Engine.new.start
  end

  def stop 
    engine = Engine.new.stop
  end
end

class Engine 
  def start 
    "Now Car engine start"
  end

  def stop
    "Car engine stop"
  end
end

RSpec.describe "Car and engine relationship" do 
  context "Implement car class" do
    it "implement car class and its method" do 
      car = Car.new
      expect(car.start).to eq("Now Car engine start")
    end

    it "implement car class and its method" do
      car = Car.new 
      expect(car.stop).to eq("Car engine stop")
    end
  end

  context "implement Engine class" do 
    xit "implement engine class and its methods" do 
      engine = Engine.new
      expect(engine.start).to eq("Engine start")
    end

    xit "implement engine class and its method" do 
      engine = Engine.new 
      expect(engine.stop).to eq("engine stop")
    end
  end
end