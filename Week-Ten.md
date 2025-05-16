Java 


   /**Write a java program  that prompts user to enter two integers.
 The program shall read the two integers as int; compute their sum; and print the result **/


    import java.util.Scanner;
    public class Workone {
    
        public static void main (String[] args) {
            int  number1, number2, sum;
    
                Scanner in = new Scanner(System.in);
    
                System.out.print("Enter first integer: ");
                number1 = in.nextInt();
    
                System.out.print("Enter second integer: ");
                number2 = in.nextInt();
                in.close();
    
                sum = number1 + number2;
    
                // Display result
                System.out.println("The sum is: " + sum);
    
        }
    }


/**Write a program called SumProductMinMax3 that prompts user for three integers.
 The program shall read the inputs as int; compute the sum, product, minimum and maximum of the three integers; and print the results.**/

    import java.util.Scanner;
    
    public class SumProductMinMax3 {
        public static void main(String[] args) {
            Scanner scanner = new Scanner(System.in);
    
            System.out.print("Enter the first integer: ");
            int num1 = scanner.nextInt();
    
            System.out.print("Enter the second integer: ");
            int num2 = scanner.nextInt();
    
            System.out.print("Enter the third integer: ");
            int num3 = scanner.nextInt();
    
            scanner.close();
    
            int sum = num1 + num2 + num3;
            int product = num1 * num2 * num3;
    
            int min = Math.min(num1, Math.min(num2, num3));
    
            int max = Math.max(num1, Math.max(num2, num3));
    
            System.out.println("The sum is: " + sum);
            System.out.println("The product is: " + product);
            System.out.println("The minimum is: " + min);
            System.out.println("The maximum is: " + max);
        }
    }




    
