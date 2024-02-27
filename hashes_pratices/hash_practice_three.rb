class HashPracticeThree 
  def company_info(data)
    manager_post = {}
    data.each do |row|
      row = row.to_h
      row.each do |key, val|
        if val == "Manager" 
          manager_post[row["Name"]] = val
        end
      end
    end
    manager_post
  end

  def contact_number(data)
    contact_num = {}
    data.each do |row|
      row = row.to_h
      row.each do |key, val|
        if val == "Jane Smith"
          contact_num[val] = [] # this is my assumption to get number string into array
          contact_num[val] << row["Phone"]
        end
      end
    end
    contact_num
  end

  def course_each_day(course_data)
    course_each_days = {}
    course_data.each do |day, courses|
      course_each_days[day] = []
      courses.each do |course, time|
      course_each_days[day] << course
      end
    end
    course_each_days
  end
end
