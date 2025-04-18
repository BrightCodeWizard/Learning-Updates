1. Java
  /* write a java program that reads a number in inches and converts it to meters*/

        import java.util.Scanner;
        public class Tryone{
            public static void  main (String [] strings) {

              Scanner input = new Scanner(System.in);

                System.out.print("input a value for Inch: ");
              double inch = input.nextDouble();
              double meters = inch * 0.0254;
               System.out.println(inch + " inch is " + meters + "meters");
            }
        }



/* write a java program to convert minutes into a years and days*/

    import java.util.Scanner;
    public class Trytwo {
        public static void main (String[] Strings) {

            double minutesInYears = 60 * 24 * 364;

          Scanner input = new Scanner(System.in);

          System.out.print("Input the number of minutes: ");

           double min = input.nextDouble();

          long years = (long) (min / minutesInYears);
          int days = (int)  (min /60/24) % 365;

          System.out.println((int) min + "minutes is approximately" + years + "years and "  + days + "days");
      }
    }  

