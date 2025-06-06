Java 

  
  Introduction to Programming in Java

  
  Types, Variable, Operators 


  
  -	The computer consists of Memory, Central Processing Unit (CPU) and                 Input/Output (IO) devices.

    
  -	CPU instruction is a command given to the processor to perform a specific           task.

    
  -	Programming Languages   is a set of instructions that a computer can                understand and execute to perform a specific task.

     
  o	Types of programing language 

  
  	Procedural Programming Languages: focus on procedures and steps to achieve a        goal (e.g., C, Java)

  
  	Object -Oriented Programming Language: organize code using object and classes       (e.g. Java, C++, Python)

  
  	Functional Programming Language: Emphasize on function and immutable data             (Haskell, Lisp)

  
  	. Scripting Languages: Designed for rapid development and execution (e.g.,          Python, JavaScript, Ruby).


  
  	 Declarative Programming Languages: Focus on specifying what the program              should accomplish (e.g., SQL, Prolog).


Java 


  •	Java is an object-oriented programming language that's platform-independent.

  
  •	It's designed to run on any device that has a Java Virtual Machine (JVM).

  
  •	Java syntax is similar to C++ but is simpler. 

  
  Compiling Java 

  
  Compiling Java involves translating Java source code into bytecode that can be     executed by the Java Virtual Machine (JVM).
  
  
  First program

          /** First Program **/
        public class FirstProgram {
            public static void main(String[]arguments){
                //Program execution begins here
                System.out.println("Hello world");
            }
        }
          
  Program Structure 
 
  
      Class CLASSNAME {
      	public static void main (Sting [] arguments) {
      	STATEMENTS
      }
      }
      Output 
      System.out.println(“”) is use to print output in Java 
      
  
  
  Second Program 


      /**  Second Program **/
      public class SecondProgram {
        public static void main(String[]arguments){
            System.out.println("Hello world");//Print once
            System.out.println("Second Line");//Again!
        }
    }

  
  
  Types 
  Types in java refers to the data types that can be used to declare variables,     function parameters and return types. 

  
  Examples
  1.	byte: an 8-bit signed integer type.
  2.	short: a 16-bit signed integer type.
  3.	int: a 32-bit signed integer type.
  4.	long: a 64-bit signed integer type.
  5.	float: a 32-bit floating-point type.
  6.	double: a 64-bit floating-point type.
  7.	boolean: a boolean type that can hold true or false values.
  8.	char: a character type that can hold a single Unicode character.
  9.	String: a reference type that represents a sequence of characters
  
  
  
  Variables 
  Variables are name given to the location in memory where data is stored. 
  
  Examples 
  1.	Int 4;
  2.	String boy;
  
  Assignment 
    
      /**Assignment
            Use = to give variables a value.
    Example:
    String foo;
    foo = “IAP 6.092”;**/
    public class Assignment {
        public static void main(String[]arg){
            String foo =  "IAP 6.092";
            System.out.println(foo);
    
            double badPi = 3.14;
            System.out.println(badPi);
    
    
            boolean isJanuary = true;
            System.out.println(isJanuary);
        }
    }



  
  
  Operators 
  Operators are symbols used to perform operation on variable and values. 
  Examples 
  Assignment: = 
  Addition: +
  Subtraction: - 
  Multiplication: * 
  Division:  /
  
  Examples 
  
  
  String Concatenation (+)
   String concatenation is the process of combining two or more strings to form a new string. This can be done using various methods, including the + operator, the concat() method, and the StringBuilde. 
  Examples 
   
  Assignment
  
