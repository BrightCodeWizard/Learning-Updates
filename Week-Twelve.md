JAVA 
  
  
  
  
  /*
Write a Java program that reads a number in inches and converts it to meters
*/

    import java.util.Scanner;
        public class work1 {
    
            public static void main(String[] Strings) {
    
                Scanner input = new Scanner(System.in);
    
                System.out.print("Input a value for inch: ");
                double inch = input.nextDouble();
                double meters = inch * 0.0254;
                System.out.println(inch + " inch is " + meters + " meters");
    
            }
        }
    


  /*
  Write a Java program that reads an integer between 0 and 1000 and adds all the digits in the integer.
  */
               
                  import java.util.Scanner;
                      public class work2 {
                  
                          public static void main(String[] Strings) {
                  
                              Scanner input = new Scanner(System.in);
                  
                              System.out.print("Input an integer between 0 and 1000: ");
                              int num = input.nextInt();
                  
                              int firstDigit = num % 10;
                              int remainingNumber = num / 10;
                              int SecondDigit = remainingNumber % 10;
                              remainingNumber = remainingNumber / 10;
                              int thirdDigit = remainingNumber % 10;
                              remainingNumber = remainingNumber / 10;
                              int fourthDigit = remainingNumber % 10;
                              int sum = thirdDigit + SecondDigit + firstDigit + fourthDigit;
                              System.out.println("The sum of all digits in " + num + " is " + sum);
                  
                          }
                      }


