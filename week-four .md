1. I was able to publish three websites 
      a.	 Login page  https://marvelous-donut-d3cd9d.netlify.app/ 
      b.	Photo gallery  https://strong-tapioca-c79342.netlify.app/ 
      c.	Portfolio website  https://clever-parfait-94e4ca.netlify.app/#contact


 2. Java
    a. we let about Arrays in java.
    /**Write a Java program that creates an array of 5 integers,
    initializes them with values,
    and then prints out each element in the array.**/
public class ArrayExample {
    public static void main(String[] args) {
        // Declare and initialize an array with 5 integers
        int[] numbers = {10, 20, 30, 40, 50};

        // Print out each element in the array
        for (int i = 0; i < numbers.length; i++) {
            System.out.println("Element at index " + i + ": " + numbers[i]);
        }
    }
}



      b. /** Write  a Java program to find the largest element in an array.**/

    public class LargestElement {
      public static void main(String[] args) {
        int[] numbers = {10, 25, 65, 12, 89, 34};

        int max = numbers[0];
        for (int i = 1; i < numbers.length; i++) {
            if (numbers[i] > max) {
                max = numbers[i];
            }
        }

        System.out.println("Largest element: " + max);
    }
}




    
    
