require './hashes_pratices/hash_practice.rb'
RSpec.describe "Nested hash parctice" do 
  it "find number of employees in a company" do 
    hash = HashPractice.new
    company_data = 
    company_data = 
    {
        engineering: { engineers: 10, managers: 3 },
        marketing: { marketers: 6, managers: 2 }
    }
    expect(hash.number_of_employees(company_data)).to eq(21)
  end
  context "car dealership" do
    it "Ttotal number of available colors for all car models" do 
      hash = HashPractice.new
      expect(hash.dealership_of_cars).to eq( 
        {
          bmw: {:model1=>["white", "blue", "grey"]},
          maruti: {:model1=>["black", "white", "grey"]},
          suzuki: {:model1=>["black", "blue", "grey"]},
          tata: {:model1=>["black", "white", "green"]},
          toyoto: {:model1=>["black", "white", "grey"]},
        })
    end
    
    it "total number of car models available in all locations" do
      hash = HashPractice.new
      expect(hash.total_number_of_car_models).to eq(
        {
          :location_delhi=>{:maruti=>1, :toyoto=>1},
          :location_mumbai=>{:bmw=>1, :suzuki=>1},
          :location_pune=>{:maruti=>1, :tata=>1}
        }
      )
    end

    it "different car brands available in each location" do
      hash = HashPractice.new
      expect(hash.available_car_brands).to eq(
        {
          :location_delhi=>[:toyoto,
          :maruti], :location_mumbai=>[:suzuki, :bmw],
          :location_pune=>[:tata, :maruti]
        })
    end

    it "Total revenue if all cars in the dealership are sold at their listed prices" do
      hash = HashPractice.new
      expect(hash.revenue).to eq(135000 )
    end
  end

  it "Job title for IT department" do
    employees = {
      "HR" => {
        "Suman" => "Manager",
        "Sohail" => "Assistant",
        "Suraj" => "Coordinator"
      },
      "IT" => {
        "Azher" => "Ruby Developer",
        "Zameer" => "Data Analyst"
      }
    }
    hash = HashPractice.new
    expect(hash.job_titles_department("IT", employees)).to eq(["Ruby Developer", "Data Analyst"])
  end

  it "person highest rating food" do
    person = {
      name: "Azher",
      age: 28,
      favorite_foods: {
        "Biryani" => 8,
        "chicken-65" => 9,
        "ice cream" => 7
      }
    }
    hash = HashPractice.new 
    expect(hash.food_rating(person)).to eq(["chicken-65", 9])
  end

  it "calculate average grade" do 
    hash = HashPractice.new 
    expect(hash.average_grades).to eq({"Azher"=>85.0, "SRK"=>90.0, "Zameer"=>70.0})
  end
end 
