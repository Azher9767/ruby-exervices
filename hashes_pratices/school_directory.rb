class SchoolDirectory
  def initialize(school)
    @school = school
  end

  def add_class(class_name)
    @school[class_name] = {}
    @school
  end

  def add_student_to_class(class_name, student_name, student_id)
    @school[class_name]["student"] = []
    @school[class_name]["student"] << student_name << student_id
    @school
  end

  def add_teacher(class_name, teacher_name)
    @school[class_name]["teacher"] = []
    @school[class_name]["teacher"] << teacher_name
    @school
  end

  def remove_student_from_class(class_name, student_id)
    @school[class_name].each do |key, val| 
      val.each do |key|  
        if key == student_id
          @school[class_name].delete("student")
        end
      end
    end
    @school
  end

  def list_of_students(class_name)
    @school[class_name].each do |key, val|
      if key == "student"
        return @school[class_name]["student"]
      end
    end
  end

  def list_of_teacher(class_name)
    @school[class_name].each do |key, val|
      if key == "teacher"
        return val
      end
    end
  end

  def find_student(class_name, student_id)
    @school.each do |key, val|
      val.each do |k1, v1|
        v1.each do |k2|
          k2.values.each do |k3|
            if k3 == student_id 
              return class_name
            end
          end
        end
      end
    end
  end

  def update_class(class_name, student_info, teacher_name)
    @school[class_name]["student"] = student_info 
    @school[class_name]["teacher"] = teacher_name
    @school
  end
end
