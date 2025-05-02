 1. Web development

        <!DOCTYPE html>
        <html lang="en">
        <head>
            <title>Libray Student Registration</title>
            <link rel="stylesheet" href="style.css">
        </head>
        <body>
        <div class="container">
        <h2>Library Student Registration Form</h2>
        <form action="/submit_registration" method="post">
            
            <label for="studentId">Student ID:</label><br>
            <input type="text" id="studentId" name="studentId" required>
            
            <label for="name">Full Name: </label><br>
            <input type="text" id="name" name="name" required>
            
            <label for="program">Program of Study: </label>
            <input type="text" id="program" name="program" required>
        
            <label for="age">Age:</label>
            <input type="number" id="age" name="age" min="18" max="100" required>
        
            <label for="gender">Gender:</label><br>
            <select id="gender" name="gender" required>
                <option value="">--Choice Your Gender--</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select><br><br>
        
            <label for="dob">Date of Birth:</label>
            <input type="text" id="name" name="name" required>
        
            <label for="email">Email:</label>
            <input type="text" id="email" name="email" required>
        
            <label for="phone">Phone Number:</label><br>
            <input type="tel" id="phone" name="phone" required>
        
            <label for="level">Level:</label>
            <div class="level-options">
              <label><input type="radio" name="level" value="100" required>100</label>
              <label><input type="radio" name="level" value="200">200</label>
              <label><input type="radio" name="level" value="300">300</label>
              <label><input type="radio" name="level" value="400">400</label>
            </div>
        
        
        
        
            <label for="address">Residential Address:</label>
            <input type="text" id="address" name="address" required>
        
            <label for="cardNumber">Library Card Number</label><br>
            <input type="text" id="cardNumber" name="cardNumber" required><br><br>
        
        
            <input type="submit" value="Register">
            </form>
            </div>
        </body>
        </html>




        body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f1f4f9;
        margin: 0;
        padding: 0;
        }
        
        .container {
        width: 90%;
        max-width: 600px;
        margin: 50px auto;
        background-color: #ffffff;
        padding: 30px 40px;
        border-radius: 12px;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }
        
        h2 {
        text-align: center;
        color: #333;
        margin-bottom: 25px;
        }
        
        label {
        display: block;
        margin-top: 15px;
        margin-bottom: 5px;
        color: #444;
        font-weight: 500;
        }
        
        input[type="text"],
        input[type="email"],
        input[type="tel"],
        input[type="number"],
        input[type="date"],
        select {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 14px;
        box-sizing: border-box;
        }
        
        .level-options,
        .radio-group {
        display: flex;
        flex-wrap: wrap;
        gap: 15px;
        margin-top: 5px;
        }
        
        .level-options label,
        .radio-group label {
        background-color: #e9ecef;
        padding: 8px 14px;
        border-radius: 6px;
        cursor: pointer;
        user-select: none;
        font-size: 14px;
        transition: background-color 0.3s ease;
        }
        
        .level-options input[type="radio"],
        .radio-group input[type="radio"] {
        margin-right: 6px;
        }
        
        .level-options label:hover,
        .radio-group label:hover {
        background-color: #d4e0f1;
        }
        
        .checkbox-group {
        margin-top: 20px;
        }
        
        input[type="checkbox"] {
        margin-right: 8px;
        }
        
        input[type="submit"] {
        width: 100%;
        padding: 14px;
        background-color: #007BFF;
        color: #fff;
        font-size: 16px;
        border: none;
        border-radius: 6px;
        margin-top: 25px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        }
        
        input[type="submit"]:hover {
        background-color: #0056b3;
        }



2.Java Programming 


  
