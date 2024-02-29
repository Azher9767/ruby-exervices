1:- Problem Statement: Create a method that takes in two hashes as parameters and returns a new hash that merges the two hashes, but only includes key-value pairs where the value is an integer greater than 10.

2:- Problem statement: 
    You have been given two hashes hash1 and hash2. Both hashes contain key-value pairs of strings. 
    You need to write a Ruby program that merges the two hashes and returns a new hash. If the two hashes have the same key, the value in the new hash should be the concatenation of the values from both hashes.

3:- Problem Statement: Write a program that takes a list of words as input and returns the word with the highest frequency

4:- Problem Statement: Write a program that randomly shuffles a hash and returns the shuffled hash.

5:- Problem statement: You are given a hash containing student names as keys and their respective scores as values. Write a method    that takes this hash as input and returns the name of the student with the highest score.

6:- Problem statement: 

Create a program that takes a list of student names and their corresponding scores as input. Calculate the average score for each student and store it in a hash. Sort the hash by average score in descending order and display the student names along with their average scores.
===================================================================================================================================
                                        2nd Exercise
===================================================================================================================================

1 : ==>>

Given a nested hash representing a company's employee data, write a method that takes in the hash and returns the total number of employees in the company.

Example Input:
company_data = 
            {
                engineering: { engineers: 10, managers: 3 },
                marketing: { marketers: 6, managers: 2 }
            }
==================================================================================================================================

2:- 
Create a nested hash structure in Ruby that represents a car dealership. The dealership has multiple locations, each of which has multiple car brands, and each brand has multiple car models. Include information such as the price and available colors for each car model.

    Calculate the average price of all car models in the dealership.
    Calculate the total number of car models available in all locations.
    Calculate the number of different car brands available in each location.
    Calculate the total number of available colors for all car models.
    Calculate the total revenue if all cars in the dealership are sold at their listed prices..
=======================================================================================================================================

3:
    Create a hash representing a company's employees and their departments. The key is the department name and the value is another hash containing the employee name as key and their job title as value. Your task is to write a method that returns a list of all job titles for a given department.

========================================================================================================================================
    4:
     sCreate a nested hash that represents information about a person. The hash should contain the person's name, age, and a hash of their favorite foods with the food names as keys and the ratings as values.
=====================================================================================================================================

5: 
    Write a Ruby program that takes information about students and their subjects along with their corresponding grades. The program should calculate the average grade for each student.
===========================================================================================================================
                                            3rd Exercise                    
======================================================================================================================
1==>

Name,Company,Position,Email,Phone
John Doe,ABC Corp,Manager,johndoe@abccorp.com,123-456-7890
Jane Smith,XYZ Inc,Developer,janesmith@xyzinc.com,456-789-1234
Mike Johnson,123 Company,Designer,mikejohnson@123company.com,789-123-4567
Sarah Brown,Global Tech,Analyst,sarahbrown@globaltech.com,234-567-8901


Question: How many employees in the CSV file hold the position of "Manager"?
Question: Find the smith phone number.

=========================================================================================================================
2 ==>
Problem:

You are given a nested hash representing a school's course schedule. Each course has a course code and a list of days on which it meets. Write a function that takes in the nested hash and returns a new hash where the keys are the days of the week and the values are arrays containing the course codes for each day.

Example Input:

        schedule = {
        "Monday" => {
            "CSC101" => ["9:00 AM", "10:30 AM"],
            "ENG201" => ["12:00 PM", "1:30 PM"]
        },
        "Tuesday" => {
            "CSC101" => ["9:00 AM", "10:30 AM"],
            "PSY301" => ["3:00 PM", "4:30 PM"]
        },
        "Wednesday" => {
            "MAT204" => ["10:00 AM", "11:30 AM"],
            "ENG201" => ["12:00 PM", "1:30 PM"]
        }
        }

Expected Output:

{
  "Monday" => ["CSC101", "ENG201"],
  "Tuesday" => ["CSC101", "PSY301"],
  "Wednesday" => ["MAT204", "ENG201"]
}

=========================================================================================================================
3 ==>
1. Create a nested hash in which the keys are strings representing students' names and the values are hashes representing their personal information (such as age, gender, and major). The nested hash should also include a key-value pair for each student's course grades, with the course names as keys and an array of grades as values.

2. Create a nested hash representing a company's organizational structure. The top-level keys should be department names, and the values should be hashes representing the employees in that department. Each employee hash should include keys for their name, job title, and salary.

3. Create a nested hash representing a book store's inventory. The top-level keys should be categories of books (fiction, non-fiction, etc.), and the values should be hashes representing individual books. Each book hash should include keys for the title, author, price, and number of copies available.

4. Create a nested hash representing a grocery store's product catalog. The top-level keys should be departments (e.g. produce, dairy, bakery), and the values should be hashes representing individual products within each department. Each product hash should include keys for the name, price, and quantity in stock.

5. Create a nested hash representing a music festival lineup. The top-level keys should be stages, and the values should be arrays of hashes representing the artists performing at each stage. Each artist hash should include keys for their name, genre, and set time.

   # 3. Create a nested hash representing a book store's inventory. The top-level keys should be categories of
   # books (fiction, non-fiction, etc.), and the values should be hashes representing individual books. Each book 
   #hash should include keys for the title, author, price, and number of copies available.
   # find out all availble books in store
   #find the book name whose author is Hamza Sir
   #find the book which price is less than 
    book_store = {
              "Programming Books" => {"Ruby" => {"title" => "Ruby_programmming", "Author" => "Azher", "Price" => 450, "Availble_book" => 4}},
              "12th Books" => {"Math" => {"title" => "Geometry", "Author" => "Hamza Sir", "Price" => 200, "Availble_book" => 1}},
              "Novel Books" ={"B" => {"title" => "Water", "Author" => "Sam", "Price" => 850, "Availble_book" => 2}}
    }
======================================================================================================================

### Question: Access Control List (ACL) Implementation 

In this task, you are required to implement an Access Control List (ACL) using Ruby's nested hashes. An ACL is used to define which users have access to various resources within a system. Each resource can have multiple users, and each user can have different levels of access (e.g., read, write, delete).

#### Requirements:

1. **Define a nested hash** that represents the ACL of a system. The structure should be as follows:

   - The top-level keys are resource names (e.g., "file1", "database2").
   - The value for each resource key is another hash, where:
     - The keys are user names (e.g., "alice", "bob").
     - The values are arrays of strings representing the access levels that the user has to the resource (e.g., ["read", "write"]).

2. **Implement a method `add_permission(resource, user, permission)`** that adds a new permission for a user on a resource. If the user already has permissions for that resource, add the new permission to their existing permissions (avoiding duplicates).

3. **Implement a method `remove_permission(resource, user, permission)`** that removes a specific permission for a user on a resource. If the user has no other permissions for the resource after removal, also remove the user from the resource. If there are no users left for a resource, remove the resource from the ACL.

4. **Implement a method `list_permissions(user)`** that returns a list of all resources and their corresponding permissions for a specific user.

5. **Bonus:** Implement a method `check_access(resource, user, permission)` that checks if a user has a specific permission on a resource, returning `true` or `false`.

#### Example:

Given an ACL represented by a nested hash like this:

```ruby
acl = {
  "file1" => {
    "alice" => ["read"],
    "bob" => ["read", "write"]
  },
  "database1" => {
    "carol" => ["write", "delete"],
    "alice" => ["read"]
  }
}
```

- Adding a new permission `add_permission("file1", "alice", "write")` should update Alice's permissions for `file1` to `["read", "write"]`.
- Removing a permission `remove_permission("database1", "carol", "delete")` should update Carol's permissions for `database1` to `["write"]`.
- Listing permissions `list_permissions("alice")` might return something like:
  ```ruby
  {
    "file1" => ["read", "write"],
    "database1" => ["read"]
  }
  ```
- Checking access `check_access("file1", "bob", "write")` should return `true`.

#### Submission:

Please submit your Ruby script that defines the ACL nested hash and includes the implementation of the required methods. Include comments to explain your logic where necessary.

===========================================================================================================================
                  wednesday practice
=========================================================================================================================


In this task, you will develop a part of a School Directory Management System using Ruby. The system will manage information about students, teachers, and classes using nested hashes and arrays. You will need to implement functionality to add, update, and query this information efficiently.

#### Requirements:

1. **Data Structure**:
   - The system should maintain a nested hash structure where the top-level keys are school class names (e.g., "Math101", "History202").
   - The value for each class key is another hash with two keys: `:students` and `:teachers`.
     - `:students` is an array of hashes, each representing a student with keys `:name` and `:id`.
     - `:teachers` is an array of names (strings) of teachers.

2. **Implement Functionality**:
   - **Adding/Updating Classes**:
     - `add_class(class_name)`: Adds a new class to the directory if it doesn't already exist.
     - `update_class(class_name, students, teachers)`: Updates the list of students and teachers for a class. This should overwrite existing data.
   - **Managing Students and Teachers**:
     - `add_student_to_class(class_name, student_name, student_id)`: Adds a new student to a class. Avoid duplicate student IDs within the same class.
     - `remove_student_from_class(class_name, student_id)`: Removes a student from a class based on their ID.
     - `add_teacher_to_class(class_name, teacher_name)`: Adds a new teacher to a class, avoiding duplicates.
     - `remove_teacher_from_class(class_name, teacher_name)`: Removes a teacher from a class.
   - **Queries**:
     - `list_students(class_name)`: Returns a list of all students (names and IDs) in a class.
     - `list_teachers(class_name)`: Returns a list of all teachers in a class.
     - `find_student(student_id)`: Searches through all classes and returns the name of the class the student with the given ID is enrolled in.

3. **Bonus Challenges**:
   - Implement a method `student_class_enrollment(student_name)` that returns a list of all classes a student is enrolled in.
   - Implement data validation to ensure student IDs are unique across the entire directory, not just within a single class.

#### Example Usage:

```ruby
directory = SchoolDirectory.new
directory.add_class("Math101")
directory.add_student_to_class("Math101", "Alice", 1001)
directory.add_teacher_to_class("Math101", "Mr. Brown")
directory.update_class("History202", [{name: "Bob", id: 2002}], ["Ms. Smith"])
puts directory.list_students("Math101")
# Expected output: [{name: "Alice", id: 1001}]
puts directory.list_teachers("Math101")
# Expected output: ["Mr. Brown"]
puts directory.find_student(1001)
# Expected output: "Math101"
```

#### Submission:

Please submit your Ruby script that defines the `SchoolDirectory` class, including implementations for the required methods. Make sure your code is well-commented to explain your logic and choices, especially for data validation and handling edge cases.


=========================================================================================================================
                                         Logs hash practice
=======================================================================================================================

Question: Custom Log Parser and Reporter
You are tasked with creating a Ruby script to parse and analyze logs from a web application. The log files are in a simple text format, where each line represents a single request and contains delimited fields. Your goal is to process this log, extract meaningful information, and produce a summary report.

Log Format
Each line in the log file follows this format:

timestamp | request_id | path | status | response_time
timestamp is the time at which the request was made (in any standard date-time format).
request_id is a unique identifier for the request.
path is the URL path that was accessed.
status is the HTTP status code returned.
response_time is the time taken to respond to the request in milliseconds.
Requirements
Parsing Functionality: Write a method parse_log(log_content) that takes the raw log content (as a string) and converts it into a structured format, such as an array of hashes, with each hash representing a single log entry.

Analysis and Reporting: Implement the following analysis functions:

average_response_time(log_entries): Calculates and returns the average response time for all requests.
count_by_status_code(log_entries): Returns a hash where each key is an HTTP status code and its value is the count of requests with that status code.
most_frequent_request_path(log_entries): Identifies the most frequently accessed path and returns it along with the number of accesses.
Error Handling: Ensure your script gracefully handles malformed log entries and logs with unexpected data formats.

Example Input
"2023-03-15T12:00:00 | abc123 | /home | 200 | 250\n2023-03-15T12:00:05 | def456 | /contact | 200 | 190\n2023-03-15T12:00:10 | ghi789 | /home | 500 | 300"
Expected Output
For the above input, your analysis functions might return:

Average response time: 246.67ms (assuming you format the output to 2 decimal places)
Count by status code: { "200" => 2, "500" => 1 }
Most frequent request path: "/home", 2 accesses
Submission
Please submit your Ruby script with the parsing, analysis, and reporting functionalities implemented. Ensure your code is well-commented, especially for the parts where you handle parsing and data aggregation. Also, include a few example log entries as a string in your script to demonstrate how your functions work.

This question requires a good understanding of Ruby's string manipulation, array and hash handling, enumerable methods, and basic error handling. It offers a practical scenario that reflects real-world tasks you might encounter as a Ruby developer.