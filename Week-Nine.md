Web development

    <!DOCTYPE html>
    <html lang="en">
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sign In</title>
    <link rel="stylesheet" href="style.css">
    </head>
    <body>
    <div class="container">
    <h2>Sign In</h2>
    <form>
    <input type="email" placeholder="Email" required>
    <input type="password" placeholder="Password" required>
    <button type="submit">Login</button>
    <p class="link"><a href="#" onclick="toggleForgot()">Forgot Password?</a></p>
    <p class="link">Don't have an account? <a href="signup.html">Sign Up</a></p>
    </form>
    
    <form id="forgot-form" class="hidden">
    <h3>Reset Password</h3>
    <input type="email" placeholder="Enter your email" required>
    <button type="submit">Reset Password</button>
    <p class="link"><a href="#" onclick="toggleForgot()">Back to Login</a></p>
    </form>
    </div>
    <script src="script.js"></script>
    </body>
    </html>
    <!DOCTYPE html>

    
    <html lang="en">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Sign Up</title>
      <link rel="stylesheet" href="style.css">
    </head>
    <body>
      <div class="container">
        <h2>Sign Up</h2>
        <form>
          <input type="text" placeholder="Username" required >
          <input type="email" placeholder="Email" required>
          <input type="password" placeholder="Password" required>
          <button type="submit">Register</button>
          <p class="link">Already have an account? <a href="index.html">Sign In</a></p>
        </form>
      </div>
    </body>
    </html>

    function toggleForgot() {
    const loginForm = document.querySelector('form:not(#forgot-form)');
    const forgotForm = document.getElementById('forgot-form');
  
    loginForm.classList.toggle('hidden');
    forgotForm.classList.toggle('hidden');
    }


    body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
      }
    
    .container {
    background: white;
    padding: 20px 25px;
    border-radius: 10px;
    width: 320px;
    box-shadow: 0 0 15px rgba(0,0,0,0.1);
    }
    
    h2, h3 {
    text-align: center;
    }
    
    form {
    display: flex;
    flex-direction: column;
    }
    
    input {
    margin: 10px 0;
    padding: 10px;
    font-size: 16px;
    }
    
    button {
    padding: 10px;
    background: #4CAF50;
    color: white;
    border: none;
    font-size: 16px;
    cursor: pointer;
    border-radius: 5px;
    margin-top: 10px;
    }
    
    button:hover {
    background: #45a049;
    }
    
    .link {
    text-align: center;
    margin-top: 10px;
    }
    
    .hidden {
    display: none;
    }

  

    
Java


 // Write a Java program to get the character at the given index within the string.

    public class Workone {

        public static void main(String[] args) {

        String str = "Java Exercises!";

        System.out.println("Original String = " + str);


        int index1 = str.charAt(0);
        int index2 = str.charAt(10);

        System.out.println("The character at position 0 is " +
                (char)index1);
        System.out.println("The character at position 10 is " +
                (char)index2);
        }
    }

        
