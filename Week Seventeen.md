**MIT **





Floats and approximation methods. 



Floats: is a datatype use to store represent real number. It is used to represent decimal number. e.g. 3.14 or -0.5.  in binary, not all decimal fraction can be represented exactly. 



Binary Representation 


•	Integers have clean binary representations. 
•	Fractions are harder: 0.1 in base 10 is infinite in binary to rounding errors. 





Why this Matters 
•	Errors are can be built up when using floats. 






Moral of the story 
•	Never use == with floats
•	Instead, check if values are within a small epsilon difference 




Approximation Methods
Estimation values like √x when exact computation is not possible. 







Algorithm 
•	Start with a guess. 
•	Keep increasing by a small amount(increment) until guess**2 is “close enough” to x. 
•	Using epsilon (e.g. 0.01) to determine closeness 










Overshooting issue 
•	You may go past the correct values without hitting the epsilon
•	Fix 




     
        
        # float
        # Examples
        
        X = 0
           for i  in range(10):
               X += 0.1
             print(X == 1)
               print(X)
        
            # moral of story
            abs(x - y) < epsilon
        
            # approximation methods
           y = 36
           epsilon = 0.01
           guess = 0.0
           increment =0.0001
           num_guesses = 0
           while abs(guess**2 - y) > epsilon:
               guess += increment
               num_guesses += 1
            print(f'{guess} is close to square root of {x}')
        
        
            #fix
            while abs(guess**2 - x) >= epsilon and guess**2 <= x:
        
        
        
            #example
        
            x float(input('Enter a decimal number between 0 and 1: '))
        
        
            p = 0
            while ((2**p)*x)% 1 !=0:
                print(f'Remainder = {str((2**p)*x - int(2**p))}')
                p+1
        
                num = int(x*(2**p))
        
                result ="
                if num == 0:
                    result = '0'
                while num > 0:
                    result = str(num%2) + result
                    num = num//2
        
                for i in range(p-len(result)):
                    result = '0' + result
        
        
                result = result[0:-p] + result[-p]
                print(f'The binary respesentation of decimal {str(x)} is {str(result)}')
        
        
        
        
            #Approximaton by epsilon increments
        
            try with 36, 24, 12345
                x = 36
            epsilon = 0.01
            num_guesses = 0
            guess = 0.0
            increment = 0.0001
            while abs(guess**2 - x) > epsilon:
                guess += increment
                num_guesses = +=1
            print(f'num_guesses ={num_guesses}')
            print(f'{guess} is close to square root of {x}')
        
        
        
            #Assignment
            # if you are incrementing from 0 by 0.022, how many increments
            # can you do before you do before you get a floating point error
            x = 0
            count = 20
            for i in range(count):
                x+=0.022
                print(x)
        

















**Java**





Summery of Java 

Variable & types 
Variable is a place where the program store data temporarily. Each variable has a type. Such as int, double, String. Variable must be declared before using it. 
 
Operator
Operator are used to perform operation on variables. 
Types: 
-	Arithmetic:  +, -, *, /, %
-	Relational: ==,!=, <, >, >=, <=
-	 Logical: &&, ||, !
-	Assignment: =, +=, -= 

Type conversions & casting
Type conversion is the process of converting value from one data type to another.  
Widening (automatic): smaller data type to lager. 
Narrowing (manual / casting): larger data type to smaller.

Methods & Parameters 
Methods are block of code that’s perform tasks. You can pass parameters of them.

 If Statement 
used to make decisions in code. 

Good programing style 
1.	The code must readable, maintainable, and error-free
2.	Use meaningful variable/method names 
3.	Follow consistent indention 
4.	Use comment to explain logic 
5.	Avoid long methos – break into smaller functions 
6.	Use camelCase for variable and methods 

Loops 
Loops are used to repeat action
for loop
while loop 
do-while loop
enhanced for loop (for arrays)

Arrays 
 Arrays store multiple value of the same datatype.
 


    
     public class Arrays {
         public static void main(String[] args) {
             int[] numbers = {1, 2, 3, 4, 5};//declaration and                                         initialization
             System.out.println(numbers[0]);// Accessing element
     
             // looping through array
             for (int i = 0; i < numbers.length; i++) {
                 System.out.println("Number  " + (i + 1) + numbers[i]);
             }
         }
     }




     public class GoodPrograming {
     
         // This method prints a greeting
         public static void printGreeting(String name) {
             System.out.println("Hello " + name + "!");
         }
     
         public static void main(String[] args) {
             String name = "Edward"; // clear variable name
             printGreeting(name); // readable method call
         }
     }



          public class IFStatement {
         public static void main(String[] args) {
             int num = 20;
     
             if (num > 0) {
                 System.out.println("Positive number");
             } else if (num < 0) {
                 System.out.println("number is negative");
             }
             else {
                 System.out.println("zero");
             }
         }
     }


          public class Loops {
              public static void main(String[] args) {
                  // for loop
                  for (int i = 0; i < 10; i++) {
                      System.out.println("Count: " + i);
                  }
          
                  // while loop
                  int count = 0;
                  while (count < 10) {
                      System.out.println("Count: " + count);
                      count++;
                  }
                  // enhance for loop
                  int[] numbers = {1, 2, 3, 4, 5};
                  for (int number : numbers) {
                      System.out.println(number);
                  }
              }
     }



          //Methods and Parameters
          public class Methods {
              // Methods with parameters
              public static int add(int a, int b) {
                  return a + b;
              }
          
              public static void main(String[] args) {
                  int result = add(10, 20);// calling method
                  System.out.println(result); // output: 30
              }
          }

     


          public class Operator {
              public static void main(String[] args) {
                  int a = 10, b = 20;
                  int sum =  a+b;   // Arithmetic
                  boolean result = a>b; // Relation
                  boolean logic = (a > 5) && (b <10);
                  System.out.println(sum);
                  System.out.println(result);
                  System.out.println(logic);
              }
          }



     

          // type conversion and casting
          public class TypeConversion {
              public static void main(String[] args) {
                  // widening
                  int a = 10;
                  double b = a;
          
                  // narrowing
                  double c = 10.5;
                  int d = (int)c;
          
                  System.out.println(b);
                  System.out.println(d);
              }
          }





     // variable & types
     public class Variable {
         public static void main(String[] args) {
             int age = 20; // integer type
             double price = 1.75; // Floating-point type
             char gender = 'M'; // character type
             String name = "Bright"; // String (text)
             boolean isMarried = true; // Boolean (true/ false)
             System.out.println(age);
             System.out.println(price);
             System.out.println(gender);
             System.out.println(name);
             System.out.println(isMarried);
          
     
























**CS50**




URL patterns: have placeholders, in effect, things that allow to parameterize the path via certain converter. they are used to map URLs (web addresses) to views (functions or classes that handle the request). They define what happens when a user visits a specific page on your website.








          from django.shortcuts import render
          from django.http import HttpResponse
          
          # Create your views here.
          def index(request):
              return render(request, "hello/index.html")
          
          
          
          def greet(request, name):
              return HttpResponse(f"Hello, {name.capitalize()}!")
          
          def greet(request, name):
              return render(request, "hello/greet.html", {
                  "name": name.capitalize()
              })
          



               from django.urls import path

               from . import views
               
               urlpatterns = [
                   path("",  views.index, name="index"),
                   path("<str:name>/", views.greet, name="greet"),3
               ]
               
               

     <!DOCTYPE html>
     <html lang="en">
     <head>
         <meta charset="UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <title>Document</title>
     </head>
     <body>
         <h1>Hello,{{}} !</h1>
     </body>
     </html>
     
     


          <!DOCTYPE html>
     <html lang="en">
     <head>
         <meta charset="UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <title>Document</title>
     </head>
     <body>
         <h1>Hello, world!</h1>
     </body>
     </html>
     
     
     
     

