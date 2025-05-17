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


Web developent 

      <!DOCTYPE html>
      <html lang="en">
      <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Class Scheduler</title>
        <link rel="stylesheet" href="style.css">
      </head>
      <body>
          <nav class="navbar">
              <div class="left">
              <div id="logo"><h1>ClassTime Manager.</h1></div>
              <div>
              <ul id="classList" class="subject-list">
                  <li><a href="#classList">View your Subject</a></li>
              </ul>
              </div>
              </div>
              <div class="searchBox">
                  <input type="search" name="SearchBar" id="searchTxt" placeholder="Search">
               </div>
          </nav>
      
          <div class="wrapper">
              <h1 class="heading">Schedule your Subject</h1>
      
              <label for="title" class="addingNote">Add Subject</label><br>
              <input type="text" id="title" placeholder="Subject"><br>
              
              <label for="note-text" class="addingNote">Add Teacher</label><br>
              <input name="text" type="text" id="note-text" placeholder="Teacher's name"><br>
      
          
              <label for="time" class="addingNote">Add Time</label><br>
              <input type="time" id="time"><br>
      
              <button onclick="addClass()">Schedule Class</button>
          </div>
      
          
          <ul id="classList" class="subject-list"></ul>
        
      
        <script src="script.js"></script>
      </body>
      </html>




          * {
           box-sizing: border-box;
           margin: 0;
           padding: 0;
           font-family: 'Segoe UI', sans-serif;
         }
         
         
         body {
           background: linear-gradient(to right, #c6e2ff, #fbeaff);
           padding: 20px;
         }
         
         
         .navbar {
           background-color: #004080;
           color: white;
           display: flex;
           justify-content: space-between;
           align-items: center;
           padding: 15px 30px;
           border-radius: 10px;
         }
         
         .navbar .left {
           display: flex;
           align-items: center;
         }
         
         #logo h1 {
           margin-right: 20px;
           font-size: 24px;
         }
         
         .navbar ul {
           list-style: none;
           display: flex;
         }
         
         .navbar ul li {
           margin-right: 15px;
         }
         
         .navbar ul li a {
           text-decoration: none;
           font-weight: bold;
         }
         
         
         .searchBox input {
           padding: 8px 12px;
           border-radius: 6px;
           border: none;
           outline: none;
           width: 200px;
         }
         
         
         .wrapper {
           background: white;
           padding: 30px;
           margin-top: 20px;
           border-radius: 12px;
           max-width: 600px;
           margin-left: auto;
           margin-right: auto;
           box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
         }
         
         .heading {
           font-size: 24px;
           margin-bottom: 20px;
           text-align: center;
         }
         
         
         .addingNote {
           font-weight: bold;
           display: block;
           margin-top: 15px;
           margin-bottom: 5px;
         }
         
         
         input[type="textarea"],
         input[type="text"],
         input[type="time"] {
           width: 100%;
           padding: 10px;
           margin-bottom: 10px;
           border: 1px solid #ccc;
           border-radius: 8px;
         }
         
         
         button {
           background-color: #004080;
           color: white;
           border: none;
           padding: 10px 20px;
           border-radius: 8px;
           cursor: pointer;
           font-size: 16px;
         }
         
         button:hover {
           background-color: #002b5c;
         }
         
         
         #classList {
           list-style: none;
           max-width: 600px;
           margin: 20px auto;
           padding: 0;
         }
         
         #classList li {
          background-color: #e3edff;
           padding: 15px;
           margin-bottom: 10px;
           border-left: 6px solid #004080;
           border-radius: 8px;
         }
         
         
         .subject-list {
           scroll-margin-top: 100px;
         }




      const classList = document.getElementById("classList");
         const searchInput = document.getElementById("searchTxt");
         
         function addClass() {
           const subjectInput = document.getElementById("title");
           const teacherInput = document.getElementById("note-text");
           const timeInput = document.getElementById("time");
         
           const subject = subjectInput.value.trim();
           const teacher = teacherInput.value.trim();
           const time = timeInput.value;
         
           if (subject === "" || teacher === "" || time === "") {
             alert("Please fill out subject, teacher, and time.");
             return;
           }
         
           const li = document.createElement("li");
           li.innerHTML = `<strong>${subject}</strong><br>Teacher: ${teacher}<br>Time: ${time}`;
           li.setAttribute("data-teacher", teacher.toLowerCase());
         
           classList.appendChild(li);
         
          
           subjectInput.value = "";
           teacherInput.value = "";
           timeInput.value = "";
         }
         
         
         searchInput.addEventListener("keyup", () => {
           const searchTerm = searchInput.value.toLowerCase();
           const items = classList.getElementsByTagName("li");
         
           Array.from(items).forEach(item => {
             const teacher = item.getAttribute("data-teacher");
             item.style.display = teacher.includes(searchTerm) ? "block" : "none";
           });
         });


    
