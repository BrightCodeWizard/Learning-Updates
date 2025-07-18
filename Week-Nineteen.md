1. **Java***




      Constructors in java
   
In java, constructor is a special type method that's called automatically when an object of a class is created. Its primary purpose is to initialize the newly created object by setting initial values for its instance variables. 
Characteristics of Constructors
•	The constructor’s name is the same as the class.
•	It does not have a return type (not even void).
•	It is automatically called when an object is created using new.


 
Types of Constructors
1.	Default Constructor
A constructor with no parameters.






































2.	Parameterized Constructor
A constructor that accepts arguments to initialize object variables.






4.  Constructor Overloading
Having multiple constructors with different parameters.



        public class Constructor{
            private String name;
            private int age;
            private String grade;
        
            // Constructor with no parameters
            public Constructor() {
                this.name = "Unknown";
                this.age = 0;
                this.grade = "N/A";
            }
        
            // Constructor with name parameter
            public Constructor(String name) {
                this.name = name;
                this.age = 0;
                this.grade = "N/A";
            }
        
            // Constructor with name and age parameters
            public Constructor(String name, int age) {
                this.name = name;
                this.age = age;
                this.grade = "N/A";
            }
        
            // Constructor with all parameters
            public Constructor(String name, int age, String grade) {
                this.name = name;
                this.age = age;
                this.grade = grade;
            }
        }








  2. **MIT**










DECOMPOSITION, ABSTRACTION, FUNCTIONS 

Decomposition is the process of breaking a complex problem into smaller, manageable parts.



Abstraction is hiding the complex details and showing only the important parts of the code.



A function is a block of code that performs a specific task and can be reused.



 Types of Functions:
Built-in functions: print(), len(), int(), etc.

User-defined functions: You create your own using def.
















            # s = "car"
            # s='b'+s[1:len(s)]
            # print(s)
            
            
            def input_scores():
                test = float(input("Enter test score: "))
                exam = float(input("Enter exam score: "))
                return test, exam
            
            def calculate_total(test, exam):
                return test + exam
            
            def calculate_average(total):
                return total / 2
            
            def display_result(avg):
                print("Your average is:", avg)
            
            # Main program (coordinating the parts)
            test_score, exam_score = input_scores()
            total = calculate_total(test_score, exam_score)
            average = calculate_average(total)
            display_result(average)
            
            
            
            def send_message(name):
                print(f"Hello {name}, welcome to Python class!")
            
            send_message("Bright")
            
            
            
            
            
            
            def add_numbers(a, b):
                return a + b
            
            result = add_numbers(5, 3)
            print("Sum is:", result)























      
**Django**





student_app/models.py




      from django.db import models
      
      class Student(models.Model):
          name = models.CharField(max_length=100)
          roll_number = models.CharField(max_length=20, unique=True)
          email = models.EmailField()
          date_of_birth = models.DateField()
      
          def __str__(self):
              return self.name
      
      class Course(models.Model):
          name = models.CharField(max_length=100)
          code = models.CharField(max_length=10)
      
          def __str__(self):
              return self.name
      
      class Enrollment(models.Model):
          student = models.ForeignKey(Student, on_delete=models.CASCADE)
          course = models.ForeignKey(Course, on_delete=models.CASCADE)
      
      class Attendance(models.Model):
          student = models.ForeignKey(Student, on_delete=models.CASCADE)
          course = models.ForeignKey(Course, on_delete=models.CASCADE)
          date = models.DateField()
          present = models.BooleanField(default=False)



student_app/admin.py




            from django.contrib import admin
            from .models import Student, Course, Enrollment, Attendance
            
            admin.site.register(Student)
            admin.site.register(Course)
            admin.site.register(Enrollment)
            admin.site.register(Attendance)





student_app/urls.py










            from django.urls import path
            from . import views
            
            urlpatterns = [
                path('students/', views.student_list, name='student_list'),
            ]






templates/student_list.html










            <h2>Student List</h2>
            <ul>
              {% for student in students %}
                <li>{{ student.name }} ({{ student.roll_number }})</li>
              {% endfor %}
            </ul>







      
