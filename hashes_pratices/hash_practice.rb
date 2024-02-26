require 'byebug'
class HashPractice
  # method of member of employees exercise
  def number_of_employees(company_data)
    total_number_of_employee = 0
    company_data.each do |department, post|
      post.each do |role, number_of_employee|
        total_number_of_employee += number_of_employee
      end
    end
    total_number_of_employee
  end

  # methods of car dealership exercise
  def dealership_of_cars
    available_colors_for_each_car = {}
    input_data.each do |location, information|
      information.each do |brands, details|
        details.each do |model, infor|
          available_colors_for_each_car[brands] = {}
          infor.each do |price, colors| 
            available_colors_for_each_car[brands][model] = colors
          end 
        end
      end
    end
    available_colors_for_each_car
  end

  def input_data
    car_dealership = {
      location_delhi: {
        toyoto: { 
          model1: { 
            price: 20000, 
            available_colors: ['black', 'white', 'grey']
          }
        },
        maruti:
          { 
            model1: {
              price: 35000, 
              available_colors: ["black", "grey"]
            }
        }
      },

      location_pune: 
        {
          tata:
            {
              model1: { price: 20000, available_colors: ['black', 'white', 'green']}
            },
          maruti:
            {
              model1: { price: 20000, available_colors: ['black', 'white', 'grey']}
            }
        },

      location_mumbai:
        {
          suzuki:
            {
              model1: { price: 20000, available_colors: ['black', 'blue', 'grey']}
            },
          bmw:
            {
              model1: { price: 20000, available_colors: ['white', 'blue', 'grey']}
            }
        }
    }
  end

  def total_number_of_car_models
    available_car_model_at_all_location = {}
    input_data.each do |location, details|
      available_car_model_at_all_location[location] = {}
      details.each do |brands, model|
        available_car_model_at_all_location[location][brands] = model.size
      end
    end
    available_car_model_at_all_location 
  end 

  def available_car_brands
    diff_brands_at_all_location = {}
    input_data.each do |location, details| 
      diff_brands_at_all_location[location] = details.keys
    end
    diff_brands_at_all_location
  end
  # method for total revenue
  def revenue
    total_revenue = 0
    input_data.each do |location, details|
      details.each do |brands, information| 
        information.each do |model, information2|
          information2.each do |category, value|
            if category == :price
              total_revenue += value
            end
          end
        end
      end
    end
    total_revenue
  end
  # method for employees data
  def job_titles_department(department, employees_data)
    employee_job_title = []
    employees_data[department].each do |employee, title|
      employee_job_title << title
    end
    employee_job_title
  end
  # method for food rating
  def food_rating(person_info)
    max_rating_food = person_info[:favorite_foods].max_by do |food, rating| 
      rating 
    end
  end

  # methods for average grades for students data
  def average_grades
    average_grade = {}
    students_data.each do |student, subjects|
      total_grades = subjects.values.sum
      average_grade[student] = total_grades.to_f / subjects.length
    end 
    average_grade
  end

  #method for students data
  def students_data
      students_data =
      {
        "Azher" => {
          "Math" => 85,
          "Science" => 90,
          "History" => 80
        },
        "Zameer" => {
          "Math" => 75,
          "Science" => 70,
          "History" => 65
        },
        "SRK" => {
          "Math" => 95,
          "Science" => 85,
          "History" => 90
        }
      }
  end
end
