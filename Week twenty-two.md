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








