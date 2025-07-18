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





