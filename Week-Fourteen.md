JAVA



More types, Methods, conditionals



More types 
In Java programming, the are several data types they can be used to store and manipulate data. The categories into two main types: 
1.	Primitive Data types (Built-in, simple type) 
a.	Examples: Short, Byte, int, long, float, double, Boolean, char
2.	Reference Daty types: 
a.	Examples: string, array, class, interface 
3.	Other data types
a.	Examples: enum, void.





Division 


In java division can be using the (/) operator and the (%) operator for remainder (modulus division) division operate differently on integers and on doubles. 


Examples


Integer division 



          
    public class Casting {
        public static void main(String[]arg){
            //implicit casting
            int num = 10;
            double d = num;
            System.out.println(d);
    
            //Explicit casting
            double x = 10.5;
            int y = (int)x;
            System.out.println(y);
        }
    }



Floating-point division 



    public class FloatingpointDividion {
        public static void main(String[]arg){
            double x = 10.0;
            double y = 3.0;
            double result = x / y;
            System.out.println(result);
        }
    }




Modulo operator 




Order of operations 
1.	Move from left to right
2.	Evaluate the right hand first 
3.	Followed by the parenthesis 


Examples



    public class ModuloOperator {
        public static void main(String[]arg){
            int a = 10;
            int b = 3;
            int remainder = a % b;
            System.out.println(remainder);
        }
    }





Mismatched type 



A mismatched type error in java occurs when you assign a value of one data type to a variable of a different data type.
To fix a mismatched type error, make sure that the data type of the variable matches the data type of the value you are trying to assign to it. 



Example


          in x = “10”
          String five = 5;


Conversion by casing 



In java, casting is the processing of converting a value from one data type to another. Th is done using the () operator, followed by the name of the value is being converted to. There are two main types of casting: 


1.	Implicit casting (widening): converting a smaller data type to a larger data type. 




    
3.	Explicit casting (Narrowing): converting larger type to a smaller type. 





Methods 



Method is a block of code that performs a specific task. 
-	It is a way to organize and code. 
-	A method can take argument, perform some operation and return a value.

1.	Method declaration



Basic method in Java consists 
Access modifier: public, private, protected. 
Return type: void, int, string
Method Name: identifier
Parameters: optional 





Method body: {}





Example


    Public.void.greet() {
    System.out.println(Hello, world!”);
    } 



    
2.	Method with Parameters


A method can accept input values (arguments).
Example 


    public void greetUser(String name) {
     System.out.println("Hello, " + name + "!");
    }


    
4. Static Methods

   
Belong to the class, not an instance.



    public static void showMessage() {
     System.out.println("Static method called!");
    	}
    Method with a Return Value
    public int add (int a,int b) {
        return a + b;
    }



Parameters are variables passed into methods to provide input 
values for processing. They allow methods to be more flexible 
and reusable by accepting different values each time they are called.
