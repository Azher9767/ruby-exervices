require_relative 'nesting'

# The intent of this exercise is to practice working with nested collections.
# Some tests will be able to pass without any enumeration, and others will require
# more complex iteration over multiple portions of the nested collection.

# All tests can be completed without using any enumerable other than #each.
# My suggestion would be to complete all tests using only #each, and then
# to go back over each test and refactor it using a different enumerable.

# The collection you're going to be using lives in ./nesting.rb and is called stores.
# If you spot an error or want to make this exercise better, please let us know!


RSpec.describe 'Advanced Nested Collections' do
  it 'test 1' do
    # EXAMPLE
    employees = stores[:olive_garden][:employees]

    expected = ["Jeff", "Zach", "Samantha"]
    expect(employees).to eq(expected)
  end

  it 'test 2' do
    # Find the ingredients for pancakes
    pancake_ingredients =[]
      stores.each do |key, value| 
        value.each do |k, v| 
          if k == :dishes
              v.each do |k1, v1| 
                k1.each do |k2, v2|
                  if v2 == "Pancakes"
                  pancake_ingredients <<  k1[:ingredients]
                  end 
                end
              end 
          end 
        end
    end
    expected = ["Flour", "Eggs", "Milk", "Syrup"]
    expect(pancake_ingredients.flatten).to eq(expected)
  end

  it 'test 3' do[
      "Rice",
      "Cheese",
      "Butter",
      "Beef",
      "Garlic",
      "Flour",
      "Eggs",
      "Milk",
      "Syrup",
      "Flour",
      "Eggs",
      "Syrup",
      "Bun",
      "Hamburger",
      "Ketchup",
      "pickles",
      "Potatoes",
      "Salt"
    ]
    # Find the price of risotto
    risotto_price = 0
    stores.each do |key, value| 
      value.each do |k, v| 
       if k == :dishes
            v.each do |k1, v1| 
               k1.each do |k2, v2|
                if v2 == "Risotto"
                  risotto_price =  k1[:price]
                end 
              end 
            end
          end
        end 
      end
    expect(risotto_price).to eq(12)
  end

  it 'test 4' do
    # Find the ingredients for a Big Mac
    big_mac_ingredients = []
      stores.each do |key, value| 
        value.each do |k, v| 
        if k == :dishes
              v.each do |k1, v1| 
                k1.each do |k2, v2|
                  if v2 == "Big Mac"
                    big_mac_ingredients <<  k1[:ingredients]
                  end 
                end 
              end
            end
          end 
        end
    expected = ['Bun','Hamburger','Ketchup','pickles']
    expect(big_mac_ingredients.flatten).to eq(expected)
  end

  it 'test 5' do
    # Find a list of restaurants
    store_names = stores.keys
    expected = [:olive_garden, :dennys, :macdonalds]
    expect(store_names).to eq(expected)
  end

  it 'test 6' do
    # Find dishes names for Olive Garden
    dishes_names= []
     stores.each do |key, value| 
      if key == :olive_garden
        value.each do |k, v|
          if k == :dishes 
            v.each do |k1, v1|
              k1.each do |k2, v2|
              if k2 == :name 
                dishes_names << v2
              end
              end
            end
          end
        end
      end
    end

    expect(dishes_names).to eq(['Risotto', 'Steak'])
  end

  it 'test 7' do
    # Return a list of employees across
    # all restaurants
    employee_names = []
      stores.each do |key, value| 
        value.each do |k, v|
          if k == :employees 
              employee_names << v 
          end
        end
      end

    expected = ["Jeff", "Zach", "Samantha", "Bob", "Sue", "James", "Alvin", "Simon", "Theodore"]
    expect(employee_names.flatten).to eq(expected)
end

  it 'test 8' do
    # Return a list of all ingredients
    # across all restaurants
    ingredients = []
      stores.each do |key, value| 
        value.each do |k, v|
          if k == :dishes 
            v.each do |k1|
              k1.each do |k2, v2|
                if k2 == :ingredients 
                  ingredients << v2 
                end
              end
            end
          end
        end
      end

    expected = [
      "Rice",
      "Cheese",
      "Butter",
      "Beef",
      "Garlic",
      "Flour",
      "Eggs",
      "Milk",
      "Syrup",
      "Flour",
      "Eggs",
      "Syrup",
      "Bun",
      "Hamburger",
      "Ketchup",
      "pickles",
      "Potatoes",
      "Salt"
    ]
    expect(ingredients.flatten).to eq(expected)
  end

  it 'test 9' do
    # Return the full menu price for Olive Garden
    full_price = []
    stores.each do |key, value| 
      if  key == :olive_garden
        value.each do |k, v| 
          if k == :dishes
            v.each do |k1| 
              k1.each do |k2, v2|
                if k2 == :price
                  full_price << v2
                end
              end
            end
          end
        end
      end 
    end

    sum = 0
    
    full_price.each do |l|
      sum += l 
    end 
    
    full_menu_price = sum
    expect(full_menu_price).to eq(27)
  end

  it 'test 10' do
    # Return the full menu for Olive Garden

    hash = {}
      stores.each do |key, value| 
        if key == :olive_garden 
          value.each do |k,v|
            if k == :dishes
              hash["Risotto"] = v[0]
              hash["Steak"] = v[1]
            end 
          end
        end
      end
      olive_garden_menu = hash
    expected = {
      "Risotto" => {
        :name => "Risotto",
        :ingredients => ["Rice", "Cheese", "Butter"],
        :price => 12
      },
      "Steak" => {
        :name => "Steak",
        :ingredients => ["Beef", "Garlic"],
        :price => 15
      }
    }
    expect(olive_garden_menu).to eq(expected)
  end

  it 'test 11' do
    # Return a full menu across all restaurants
    hash = {}
    stores.each do |key, value| 
      if key == :olive_garden 
        value.each do |k,v|
          if k == :dishes
            hash["Risotto"] = v[0]
            hash["Steak"] = v[1]
          end 
        end
      end
      if key == :dennys 
        value.each do |k1,v1|
          if k1 == :dishes
            hash["Pancakes"] = v1[0]
            hash["Waffles"] = v1[1]
          end 
        end
      end
      if key == :macdonalds 
        value.each do |k2,v2|
          if k2 == :dishes
            hash["Big Mac"] = v2[0]
            hash["Fries"] = v2[1]
          end 
        end
      end    
    end
    full_menu = hash
    expected = {
      "Risotto" => {
        :name => "Risotto",
        :ingredients => ["Rice", "Cheese", "Butter"],
        :price => 12
      },
      "Steak" => {
        :name => "Steak",
        :ingredients => ["Beef", "Garlic"],
        :price => 15
      },
      "Pancakes" => {
        :name => "Pancakes",
        :ingredients => ["Flour", "Eggs", "Milk", "Syrup"],
        :price => 10
      },
      "Waffles" => {
        :name => "Waffles",
        :ingredients => ["Flour", "Eggs", "Syrup"],
        :price => 7
      },
      "Big Mac" => {
        :name => "Big Mac",
        :ingredients => ["Bun", "Hamburger", "Ketchup", "pickles"],
        :price => 5
      },
      "Fries" => {
        :name => "Fries",
        :ingredients => ["Potatoes", "Salt"],
        :price => 2
      }
    }
    expect(full_menu).to eq(expected)
  end
end
