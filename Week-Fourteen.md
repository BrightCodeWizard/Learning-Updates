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











Cs50




Git 


Git is version control too.
-	It helps to keep track of changes to codes. 
-	It helps to synchronizes code between different people. 
-	It helps test changes to code without losing the original. 
-	It helps revert back to old version of code. S








Git project is stored online on GitHub, so that it can be accessed anywhere when needed 


GitHub 
To create git file, you to create a repository. Github.com/new.







How to create a new file in terminal
a.	 Type touch and file name to crate a new file







Git command  
1.	Git clone: is a command that can be run in order to take a repository from the internet and download it onto our own computer. 
To use this command, you need to type in git clone followed by url of the repository (git clone<URL>) 
2.	 Code.: is use to create a new file 
3.	git commit: is used to save current state of all of the files, folder and other assets that exist inside of the repository.
4.	git add: is used to add a file as one to track the next time.  
5.	git status: is used to check the state of a file or folder.
6.	git push: is used to more files to GitHub.
7.	git pull: is used to download the latest version of the repository on git to local pc 
8.	merge conflicts: occurs when changes are done on the same repository are on the same line. 
9.	get log: used for track keeping 





Python



Print (“Hello world”) is the first program. It will Hello world as this program runs. Print is a function in python. The function in python takes the arguments inside of parentheses, which the input to the print function.




The extension for python is .py. python also supports variables. 




Variables 
a = 38(int)
b = 1.6 (float)
c = “Hello!” (str)
d = True(bool)
e = None (None Type)




unlike other languages like c, or java where you have to specify the datatype of every variable like int a to mean a is an integer. Python doesn’t require you to state the datatype of each variable.




Input is a function is used to prompts the user for input from users. They can also be saved in a variable. 



Python support all of the same other features that are core to many procedural programming languages, such as conditions, for examples.




 Data structure 
1.	List – sequence of mutable values
2.	Tuple – sequence of immutable values 
3.	Set – collection of unique values 
4.	dict  - collection of key-value pairs




Examples


