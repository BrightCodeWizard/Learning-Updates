**Java**



 Array
 
Arrays are indexed list of values.  It can be done with any data type. Such int, string, double String, etc. 


All element if an array must have same type. Arrays the index start a zero and ends at length-1.


An Arrays is represented using TYPE []. It is another type. 


How to create an array.
1.	Use the operator “new:” to create an array of a given size. Variables can be used to specify the size 
Array initialization 
To initialize an array, use curly braces ({}). It is being used only when declaring a variable. 
Accessing Arrays 
The operator []: is used to access the elements of an array. 



The length variable 
In java, you can access the length using the “length” field. It’s a public final, so you can directly access it without using parentheses. 
Example


String arrays 
A string array in java is an array that can hold multiple “String” objects. 
Combining loops and arrays 
Combining loops and arrays is fundamental in almost any programming language, including java. Loops provide the mechanism to process each element in an array, while arrays give you a structured way to store multiple pieces of data.
Looping through an array.



     import java.sql.SQLOutput;
     
  
     public class Arrays {
         public static  void main(String[]arg){
             /*int [] values = new int [5];
             values [0] = 12;
             values [4] = 12;
             //values [5] = 12;*/
     
            // Accessing Array
             int[] values  = {12, 24, -23, 47};
             values[3] = 18;
             int x  = values [1] + 3;
             System.out.println(values);
     
             //the length variable
             int[] values = new int[12];
             int size =  values.length;
     
             //  String arrays
             public static void main (String[]arg){
                 System.out.println(arg.length);
                 System.out.println(arg [0]);
                 System.out.println(arg [1]);
             }
     
     
             // looping through an array
             // example 1
             int [] values = new  int[15];
     
             for (int i = 0; i < values.length; 1++) {
                 values [i] = i;
                 int y = values[i] * values[i];
                 System.out.println(y);
             }
     
             //example 2
             int [] values = new int[5];
             int i = 0;
             while (i < values.length) {
                 values[i] = i;
                 int y = values = values[i] * values;
                 System.out.println(y);
                 1++;
             }
     
         }
     }



  
    public class Assignment {
        public static void main (String[]arg){
            String[]names = {
                "Kofi", "Ama", "Kwame", "Kojo"
            };
            int []time = {
                    200,220,230,210
            };
            for(int i = 0; i < names.length; i++){
                System.out.println(names[i] +":" + time[i]);
            }
        }
    }


