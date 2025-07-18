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
            
