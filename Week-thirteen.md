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


      //examples 1
    public class Operators {
        public static void main(String[]arg){
            double score = 1.0 + 2.0 +3.0;
            System.out.println(score);
            score = score / 2.0;
            System.out.println(score);
    
            //example 2
            double copy = score;
            copy = copy / 2.0;
            System.out.println(copy);
            System.out.println(score);
        }
    }
  
  
  String Concatenation (+)

  
String concatenation is the process of combining two or more strings to form a new string. This can be done using various methods, including the + operator, the concat() method, and the StringBuilde. 
  Examples 
  
  
        //Using the + Operator
      public class StringConcatenation {
          public static void main(String[]arg){
              String One = "Hello";
              String Two = "Word";
              String Three = One + Two;
      
              System.out.println(Three);
      
              //Using the concat() Method
              String first = "Kojo";
              String Second = "Dan";
              String Last = first.concat(Second);
              System.out.println(Last);
      
      
              //Using the StringBuilder Class
              StringBuilder work = new
              StringBuilder("Java");
              work.append("program");
              String result = work.toString();
              System.out.println(result);
          }
      }

   
  Assignment



      public class GravityCalculator {
        public static void main(String[]arg){
            double gravity = 9.81; // earth's gravity in m/s^2
            double initialvelocity = 0.0;
            double fallingTime = 10.0;
            double initialPosition = 0.0;
            double finalPosition = 0.0;
            System.out.println("The object position after  " + fallingTime + "seconds is " + finalPosition + "m");
            
        }
    }












CS50 - Web Programming with Python and JavaScript



Introduction 

1.	Html and css 
2.	Git
3.	Python 
a.	Django 
4.	SQL, models and migrations 
5.	JavaScript
6.	Testing   and CI/CD
7.	Scalability and security 


Html and CSS 

Html (Hyper Text Markup Language): is a language use to describe the structure of the web page. 


Structure of HTML


    <!DOCTYPE html>
    <html lang="en">
    <head>
        <title>Document</title>
    </head>
    <body>    
    </body>
    </html>

    
This is what the browser understands and display to the user.



Document Object Model (DOC): is the tree-like structure that describe how all of these HTML elements are related to each other. 
Html 

   			Head				Body 
				
			Title




	<!-- Example 1 
	 HELLO world -->
  
	<!DOCTYPE html>
	<html lang="en">
	<head>
	    <title>Hello!</title>
	</head>
	<body>
	    Hello, world!
	</body>
	</html>


	<!-- Example 2 
	 Headinds
	 it uses tags from h1 to h6, 
	 h1 is the largest and h6 is the smallest -->
  
	<!DOCTYPE html>
	<html lang="en">
	<head>
	    <title>Headinds </title>
	</head>
	<body>
	    <h1>This is a heading</h1> 
	    <h2>This is a smaller heading</h2>
	    <h6>smallest heading</h6>
	</body>
	</html>




	<!-- Example 3
	LIST 
	there two types of lists 
	Ordered List and Unordered List
	ordered list are numbered 
	and unordered list are with bullet point
	-->
 
	 <!DOCTYPE html>
	<html lang="en">
	<head>
	    <title>Lists</title>
	</head>
	<body>
	   An Ordered  List:
	    <ol>
	        <li>Item one</li>
	        <li>Item two</li>
	        <li>Item there</li>
	    </ol>
	
	    An Unordered Lists
	    <ul>
	        <li>Fist Item</li>
	        <li>Second Item</li>
	        <li>Third Item</li>
	    </ul>
	</body>
	</html> 



	<!-- Example 4 
	Image
	To display images on the web page 
	we use the image tag <img> 
	it has no closing tag. it has a couple of 
	attributes. These are src short for source. which is 
	the image to be display on the page. Also, there is 
	alt short for alternative, is a text-based representation.
	this is helpful in-case the Image can't be displayed. 
	we can also change the size id of the image 
	by attributes like the width and height   
	-->
 
	<!DOCTYPE html>
	<html lang="en">
	<head>
	    <title>Image</title>
	</head>
	<body>
	    <img src="logo.jpg " alt="Logo" width="200" height="300">
	</body>
	</html> 
	 


	<!-- Example 5
	 Links
	 links help to navigate between page on web.
	 in order to create a link, we need to use 
	 a tag called the  a tag short for anchor tag it also
	 takes an attribute, which is called herf, short for 
	 hyperlink reference, which specify what page 
	 to link to. inside the a tag you would have to 
	 specify what text that would be displayed, and 
	 when users click on that text they're taken to 
	 the web page. The href attribute is not only to 
	 link to different websites together, but can link 
	 to different pages on the same website. 
	-->
 
	 <!DOCTYPE html>
	<html lang="en">
	<head>
	    <title>Links</title>
	</head>
	<body>
	    <a href="https://google.com">Click Here</a> 
	
	    <a href="logo.jpg">Logo</a>    
	</body>
	</html> 


	<!-- Example 6
	Tables
	tables are another way to display information
	on the web. it consists of sequence of individual 
	table rows. And each row is sequence of individual 
	cell of within that table. Tables also have different 
	part such heading(thead)for the heading of the table, 
	inside the heading tag of the table, we have (th) h for 
	heading. We also have the body(tbody), which consist of 
	individual row(tr) of the table. inside the table row
	we also have data point (td)
	-->
	
	<!DOCTYPE html>
	<html lang="en">
	<head>
	    <title>Table</title>
	</head>
	<body>
	   <table>
	        <thead>
	            <th>Name</th>
	            <th>Age</th>
	            <th>Number</th>
	        </thead>
	        <tbody>
	            <tr>
	                <td>Kofi</td>
	                <td>20</td>
	                <td>001</td>
	            </tr>
	            <tr>
	                <td>Ama</td>
	                <td>30</td>
	                <td>002</td>
	            </tr>
	        </tbody>
	    </table>
	</body>
	</html>
	 



	
	<!-- Example 7 
	 Forms
	 forms are used to collect user input and 
	 send it to a server for processing. 
	 to create a form in html, state the form element.<form> 
	 inside the form element there elements such as <input> 
	 Attributes of <input> Tag 
	 1. types - specifies the type of input(e.g. text, password, email, number, checkbox, radio)
	 2. name: specifies the name of the input field, used to identify the field in the form data
	 3. value: specifies the initial value of the input field
	 4. placeholder: specifies a hint or placeholder text for the input field
	 5. required: specifies whether the input field is required to be filled in
	
	
	 Types of <input> Tags
	 1. text: single-line text input
	 2. password: password input
	 3. email: email address input
	 4. number: numerical input
	 5. checkbox: checkbox input
	 6. radio: radio button input
	 7. date: date input
	 8. time: time input
	 
	 <input> tags has no closing tag
	 
	 -->
	
	<!DOCTYPE html>
	<html lang="en">
	<head>
	    <title>Forms</title>
	</head>
	<body>
	    <form>
	        <div>
	            <input type="text" placeholder="Full Name" name="name">
	            <input type="password" type="password" placeholder="Password">
	        <div> 
	
	        <div>
	            Favorite color?
	            <input  type="radio" value="Blue">Blue
	            <input  type="radio" value="red">Red
	            <input  type="radio" value="green">Green
	            <input  type="radio" value="Other">Other
	         </div>
	
	
	        <div>
	            <input name="school" list="school" placeholder="School">
	            <datalist id="school">
	                <option value="UCC"> 
	                <option value="UG"> 
	                <option value="KTU"> 
	                <option value="TTU"> 
	                <option value="STU"> 
	                <option value="UEW"> 
	                <option value="HTU"> 
	            </datalist>
	        </div>
	         
	    </form>
	</body>
	</html>  
	



















   
CSS
CSS also known as cascading style sheets is a styling language used to control the layout and appearance of web pages. 


CSS specificity 
1.	Inline 
2.	Id 
3.	Class
4.	Type 
 CSS selectors 
a,b	Multiple Element Selector 
a b 	Descendant Selector 
a > b	child selector 
a + b	adjacent sibling selector 
[a = b]	attribute selector 
a :: b 	pseudo element selector 
 a : b 	pseudo class selector 


Responsive Design
Responsive design is an approach to web development that ensures a website or application adapts to different screen sizes, devices, and orientations
Way to implement responsive design on the web page. 
-	Viewport 
-	Media queries 
-	Flexbox 
-	Grids 



Viewport
Viewport is the visual part of the screen the user can see. It's the area where the user interacts with the content of the page.   The viewport can be controlled using HTML and CSS to ensure a responsive and user-friendly experience across various devices.
They can control the web page, u need to add line of code to the head tag 
 <meta name="viewport" content="width=device-width, initial-scale=1.0">

Media Queries 
Media queries are a CSS feature that allows you to apply different styles based on specific conditions, such as screen size, device orientation, or resolution
Examples 

Flexbox 
Flexbox is a layout mode in CSS that allows you to easily create flexible and responsive layouts
Examples 



Grid 
Grid is a layout mode in CSS that allows you to create complex and responsive layouts using a grid system
Examples 



Bootstrap 
Bootstrap is a popular front-end framework for building responsive and mobile-first web applications. It provides a set of pre-designed HTML, CSS, and JavaScript components that can be easily customized and combined to create a wide range of web application 


Sass
Sass (Syntactically Awesome Stylesheets) is a CSS preprocessor that allows you to write more efficient and maintainable CSS code. It's a powerful tool that helps you write CSS more efficiently and effectively

Examples 




















Git 
Git is version control too.
-	It helps to keep track of changes to codes. 
-	It helps to synchronizes code between different people. 
-	It helps test changes to code without losing the original. 
-	It helps revert back to old version of code. S

Git project is stored online on GitHub, so that it can be accessed anywhere when needed  
GitHub 
To create git file, you to create a repository. Github.com/new.

Git command  
1.	Git clone: is a command that can be run in order to take a repository from the internet and download it onto our own computer. 
To use this command, you need to type in git clone followed by url of the repository ( git clone<URL>) 








