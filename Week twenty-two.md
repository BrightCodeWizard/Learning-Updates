**Java **



Java API



API:


Application Programming Interface, is set of rules and protocol that allows different software application to communicate with each other. It’s basically a messenger that take a request from the user to a system and brings the response back to user. 
In java, the Java API is a huge collection of pre-written classes and methods provided by Java Libraries. Its ready-made so there is no need to write from scratch.  For example, let take toolbox.  If you want to use a tool like hammer on a nail. You don’t build a hammer; you use the one the toolbox. 
Structure of Java API
The Java API is grouped into packages (collections of related classes and interfaces).
Some important ones are:
•	java.lang → Core classes (String, Math, Object, Wrapper classes).
•	java.util → Data structures and utilities (ArrayList, HashMap, Date).
•	java.io → Input/Output (File, BufferedReader, PrintWriter).
•	java.net → Networking (URL, Socket, HttpURLConnection).
•	java.sql → Database connectivity (Connection, ResultSet, PreparedStatement).





    
    // using java.util
    import java.util.ArrayList;
    import java.util.HashMap;
    
    public class ArrayandHashMap {
        public static void main(String[]arg){
            // ArrayList from java.util
            ArrayList<String>fruits = new ArrayList<>();
            fruits.add("Apple");
            fruits.add("Banana");
            fruits.add("Mango");
            System.out.println("Fruits:  " + fruits);
    
    
            // HashMap from  java.util
            HashMap<String, Integer> ages = new HashMap<>();
            ages.put("Bright", 25);
            ages.put("kwame", 30);
            System.out.println("Bright's age:  " + ages.get("Bright"));
        }
    }







    //using java.io
    import java.io.FileReader;
    import java.io.FileWriter;
    import java.io.IOException;
    
    
    public class FileHandling {
        public static void main(String[]args) {
         try{
             FileWriter writer = new FileWriter("example.txt");
             writer.write("Hello");
             writer.close();
    
             FileReader reader = new FileReader("example.txt");
             int data;
             while ((data = reader.read()) != -1) {
                 System.out.println((char) data);
             }
             reader.close();
         } catch (IOException e) {
             System.out.println("bod");
         }
        }
    }







    
    //using java.sql
    
    import java.sql.*;
    
    
    public class Database {
        public static void main(String[] args) {
            try{
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/testdb", "root", "password");
    
                Statement stmt = con.createStatement();
    
                ResultSet rs = stmt.executeQuery("SELECT * FROM student");
    
                while  (rs.next()) {
                    System.out.println(rs.getInt("id") + " " + rs.getString("name"));
                }
    
                con.close();
            } catch (Exception e) {
                System.out.println(e);
            }
        }
    }












**4. MIT**





Function and Object 
A function in Python is a named block of code that performs a specific task, can take inputs (parameters/arguments), and can optionally return an output.


Object 
An object is an instance of a class that stores data (attributes) and behavior (methods).
Objects are created from classes, which act as blueprints







                
                
                # Problem 1: Write a recursive program to calculate the sum of                     the positive
                # integers of n+(n-2)+(n-4)... (until and not including n-x =< 0)
                
                def sum_series(n):
                    if n <=0:
                        return 0
                    else:
                        return n + sum_series(n-2)
                
                
                
                # Problem 2: Write a recursive program to calculate the value of 'a' to the power 'b'
                def power(a, b):
                    if b==0:
                        return 1
                    else:
                        return a * power(a, b-1)
                
                
                # Problem 3: Write a recursive program to calculate the sum of a list of numbers.
                
                def list_sum(num_List):
                    if len(num_List) == 1:
                        return num_List[0]
                    else:
                        return num_List[0] + list_sum(num_List[1:])
                
                
                #Problem 4: Write a recurssive program to calculate the nth harmonic number
                
                def harmonic(n):
                    if n == 1:
                        return 1
                    else:
                        return 1/n + harmonic(n-1)
                
                
                
                
                 #Extra - Problem 5: Write a recursive program to find the greatest common divisor (gcd)
                # of two integers.
                def gcd(a,b):
                    if(b==0):
                        return a
                    else:
                        return gcd(b,a%b)
                
                
                
                
                
                
                
                
                
                # 1. Function to add two numbers
                def add_numbers(a, b):
                    return a + b
                
                print(add_numbers(3, 5))
                
                
                # 2. Function to check if a number is even
                def is_even(num):
                    return num % 2 == 0
                
                print(is_even(4))
                print(is_even(7))
                
                
                # 3. Function to reverse a string
                def reverse_string(s):
                    return s[::-1]
                
                print(reverse_string("Python"))
                
                
                # 4. Function to calculate area of a circle
                def calculate_area(radius):
                    return 3.14 * radius ** 2
                
                print(calculate_area(5))

















