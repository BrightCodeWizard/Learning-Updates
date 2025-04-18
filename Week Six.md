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



2. web development

          <!DOCTYPE html>
              <html lang="en">
              <head>
                  <meta charset="UTF-8">
                  <meta name="viewport" content="width=device-width, initial-scale=1.0">
                  <title>My Login page</title>
                  <link rel="stylesheet" href="styles.css">
              </head>
              <body>
                  <div class="container">
                      <form id="loginForm">
                          <h2>Login</h2>
                          <input type="email" placeholder="Email" required>
                          <input type="password" placeholder="Password" required>
                          <button type="submit">Login</button>
                          <p>Don't have an account? <a href="#" onclick="showRegister()">Register</a></p>
                      </form>
              
                      <form id="registerForm" style="display: none;">
                          <h2>Register</h2>
                          <input type="text" placeholder="Username" required>
                          <input type="email" placeholder="Email" required>
                          <input type="Phone number" placeholder="Phone Number" required>
                          <input type="password" placeholder="Password" required>
                          <button type="submit">Register</button>
                          <p>Already have an account? <a href="#" onclick="showLogin()">Login</a></p>
                      </form>
                  </div>
              
                  <script>
                      function showLogin() {
                          document.getElementById('loginForm').style.display = 'flex';
                          document.getElementById('registerForm').style.display = 'none';
                      }
              
                      function showRegister() {
                          document.getElementById('loginForm').style.display = 'none';
                          document.getElementById('registerForm').style.display = 'flex';
                      }
                  </script>
              </body>
              </html>

  
  
        * {
              margin: 0;
              padding: 0;
              box-sizing: border-box;
              font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
          }
          
          body {
              min-height: 100vh;
              background: #4b6cb7;
              display: flex;
              align-items: center;
              justify-content: center;
              padding: 1rem;
          }
          
          .container {
              background: white;
              padding: 2rem;
              border-radius: 8px;
              box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
              width: 90%;
              max-width: 360px;
          }
          
          form {
              display: flex;
              flex-direction: column;
              gap: 1rem;
              opacity: 1;
              transition: opacity 0.3s ease;
          }
          
          form[style*="display: none"] {
              opacity: 0;
          }
          
          h2 {
              color: #333;
              text-align: center;
          }
          
          input {
              padding: 0.75rem;
              border: 1px solid #ddd;
              border-radius: 4px;
              font-size: 1rem;
          }
          
          button {
              background: #4b6cb7;
              color: white;
              padding: 0.75rem;
              border: none;
              border-radius: 4px;
              font-size: 1rem;
              cursor: pointer;
              transition: background-color 0.2s;
          }
          
          button:hover {
              background: #3a5a9c;
          }
          
          p {
              text-align: center;
              color: #666;
          }
          
          a {
              color: #4b6cb7;
              text-decoration: none;
              transition: color 0.2s;
          }
          
          a:hover {
              color: #3a5a9c;
              text-decoration: underline;
          }

3. Database

   -- Write a MySQL query to create a simple table countries including columns country_id, country_name and region_id.

       create database Map_db;
       use MP_db;

        
        create table countries

         COUNTRY_ID varchar(2),

        COUNTRY_NAME varchar(40),

        
        REGION_ID decimal(10,0)
        );
    
                      

