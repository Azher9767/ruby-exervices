Here are a few practice questions that focus on various OOP fundamentals:

1. **Basic Class and Object Creation**
   - Create a `Book` class. Each book should have a title, author, and a method to display the book's details.
   - Write a script to create instances of the `Book` class and display their details.

2. **Inheritance**
   - Define a `Vehicle` class with properties like number of wheels and speed. Include a method to display the vehicle's details.
   - Create two subclasses, `Car` and `Bike`, that inherit from `Vehicle`. Override the display method to include specific details relevant to each subclass.
   - Instantiate objects of `Car` and `Bike` and demonstrate how they use both parent and their own methods.

3. **Encapsulation**
   - Create a `Person` class where each instance has a name and age. Ensure that the age cannot be accessed or modified directly from outside the class.
   - Implement methods to get and set the age, including checks to prevent setting an invalid age (e.g., negative values).

4. **Polymorphism**
   - Define an `Animal` class with a method `speak` that returns a generic sound.
   - Create several subclasses (like `Dog`, `Cat`, `Bird`) each overriding the `speak` method to return an appropriate sound.
   - Write a script that creates instances of each animal and calls their `speak` method.

5. **Modules and Mixins**
   - Create a module `Drivable` with a method `drive` that prints a message about driving.
   - Create a few classes like `Car` and `Truck`. Include the `Drivable` module in these classes.
   - Demonstrate how instances of `Car` and `Truck` can use the `drive` method from the `Drivable` module.

6. **Association, Aggregation, and Composition**
   - Implement classes representing a `Library` and `Book`. A library should have a list of books.
   - Demonstrate association (a library has many books), aggregation (books can exist independently of a library), and composition (if a library is deleted, its books should also be deleted).

7. **Class Methods and Variables**
   - Create a `Calculator` class with a class variable that keeps track of the number of calculations made.
   - Add class methods for different mathematical operations (addition, subtraction, etc.).
   - Every time a calculation is made, update the count and provide a method to retrieve the total number of calculations.

These questions cover a range of OOP principles and should provide a good practice in understanding and implementing them in Ruby. Remember, the key to mastering OOP is not just to write code that works but to write code that is organized, readable, and adheres to OOP principles.
