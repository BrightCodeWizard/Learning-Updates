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




WEB DEVELOPMENT 


    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Age Calculator</title>
      <link rel="stylesheet" href="style.css">
    </head>
    <body>
      <div class="container">
        <h1>Age Calculator</h1>
          <div class="form">
            <label for="dob">Enter your date of birth</label>
            <input type="date" name="dob" id="dob">
            <button type="submit" id="btn">Calculate Age</button>
            <p id="result">You are  years old</p>
          </div>   
      </div>
        <script src="script.js"></script>
    </body>
    </html>




        body{
        padding: 20px;
        font-family: "Montserrat",sans-serif;
        background-color: gray;
      }
      
      .container{
          background-color: yellowgreen;
          box-shadow: 0px 0px 10px rgba(0, 0, 0,0.2 );
          border-radius: 5px;
          padding: 20px;
          max-width: 600px;
          margin: 50px auto;
      }
      
      h1{
          text-align: center;
          margin-top: 0px;
          margin-bottom: 20px;
          font-size: 36px;
        }
            
      .form {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        }
                  
      label{
        font-weight: bold;
        margin-bottom: 10px;
      }
                                 
      input{
        padding: 8px;
        border: 2px solid #ccc;
        border-radius: 5px;
        width: 100%;
        max-width: 300px;
      }
                                  
      button{                                
        color: white;
        background-color:  #0062cc;
        padding: 10px 20px;
        border-radius: 5px;
        margin: 10px;
        cursor: pointer;
        transition: background-color .3s ease;
      }
                                 
      button:hover{
        background-color: rgb(137, 137, 253);
      }
                                  
      #result{
        margin-top: 20px;
        font-weight: bold;
        font-size: 24px;
    }







    document.getElementById('btn').addEventListener('click', function () {
      const dob = document.getElementById('dob').value;
      const result = document.getElementById('result');
    
      if (!dob) {
        result.textContent = "Please enter your date of birth.";
        return;
      }
    
      const birthDate = new Date(dob);
      const today = new Date();
    
      let age = today.getFullYear() - birthDate.getFullYear();
      const monthDiff = today.getMonth() - birthDate.getMonth();
      const dayDiff = today.getDate() - birthDate.getDate();
    
      if (monthDiff < 0 || (monthDiff === 0 && dayDiff < 0)) {
        age--;
      }
    
      result.textContent = `You are ${age} years old.`;
    });

