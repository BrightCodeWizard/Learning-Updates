1. Web development 

        <!DOCTYPE html>
        <html lang="en">
        <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>MY Calculator</title>
        <link rel="stylesheet" href="style.css">
        </head>
        <body>
        <div class="container">
        <input type="text" class="display">

        <div class="buttons">
          <button class="operator" data-value="AC">AC</button>
          <button class="operator" data-value="DEL">DEL</button>
          <button class="operator" data-value="%">%</button>
          <button class="operator" data-value="/">/</button>
  
          <button data-value="7">7</button>
          <button data-value="8">8</button>
          <button data-value="9">9</button>
          <button class="operator" data-value="*">*</button>
  
          <button data-value="4">4</button>
          <button data-value="5">5</button>
          <button data-value="6">6</button>
          <button class="operator" data-value="-">-</button>
  
          <button data-value="1">1</button>
          <button data-value="2">2</button>
          <button data-value="3">3</button>
          <button class="operator" data-value="+">+</button>
  
          <button data-value="0">0</button>
          <button data-value="00">00</button>
          <button data-value=".">.</button>
          <button class="operator" data-value="=">=</button>
        </div>
          </div>
      
          <script src="script.js"></script>
        </body>
        </html>
    
    
        
        * {
          margin: 0;
          padding: 0;
          box-sizing: border-box;
          font-family: sans-serif;
        }
        body {
          height: 100vh;
          display: flex;
          align-items: center;
          justify-content: center;
          background:black;
        }
        .container {
          position: relative;
          max-width: 300px;
          width: 100%;
          border-radius: 12px;
          padding: 10px 20px 20px;
          background: green;
          box-shadow: 0 5px 10px rgba(0, 0, 0, 0.05);
        }
        .display {
          height: 80px;
          width: 100%;
          outline: 50%;
          border: 50%;
          text-align: right;
          margin-bottom: 10px;
          font-size: 25px;
          color: #000e1a;
          pointer-events: none;
        }
        .buttons {
          display: grid;
          grid-gap: 10px;
          grid-template-columns: repeat(4, 1fr);
        }
        .buttons button {
          padding: 10px;
          border-radius: 6px;
          border: none;
          font-size: 20px;
          cursor: pointer;
          background-color: #eee;
        }
        .buttons button:active {
          transform: scale(0.99);
        }
        .operator {
          color: #2f9fff;
        }
    
    
        
        const display = document.querySelector(".display");
        const buttons = document.querySelectorAll("button");
        const specialChars = ["%", "*", "/", "-", "+", "="];
        let output = "";
        
        
        const calculate = (btnValue) => {
          display.focus();
          if (btnValue === "=" && output !== "") {
            output = eval(output.replace("%", "/100"));
          } else if (btnValue === "AC") {
            output = "";
          } else if (btnValue === "DEL") {
            output = output.toString().slice(0, -1);
          } else {
            if (output === "" && specialChars.includes(btnValue)) return;
            output += btnValue;
          }
          display.value = output;
        };
        
        buttons.forEach((button) => {
            button.addEventListener("click", (e) => calculate(e.target.dataset.value));
        });



    
2 Java



/*Write a Java program to create a class called “Cat” with instance variables name and age.
Implement a default constructor that initializes the name to "Unknown" and the age to 0.
 Print the values of the variables.*/

    public class Cat {

    private String name;
        private int age;

        public Cat() {
            this.name = "Unknown";

            this.age = 0;
        }

        public String getName() {
            return name;
        }

        public int getAge() {
            return age;
        }

        public static void main(String[] args) {
            Cat myCat = new Cat();
            System.out.println("Cat's Name: " + myCat.getName());
            System.out.println("Cat's Age: " + myCat.getAge());
        }

    }



/*Write a Java program to create a class called Dog with instance variables name and color.
Implement a parameterized constructor that takes name and color as parameters and initializes
the instance variables.Print the values of the variables*/
        
    public class Dog {

        private String name;
        private String color;


        public Dog(String name, String color) {

            this.name = name;

            this.color = color;
        }


        public static void main(String[] args) {

            Dog myDog = new Dog("Bailey", "Black");

            System.out.println("Dog's Name: " + myDog.name);
            System.out.println("Dog's Color: " + myDog.color);
        }
    }


/*Write a Java program to create a class called "Book" with instance variables title, author, and price. Implement a default constructor and two parameterized constructors:
One constructor takes title and author as parameters.
The other constructor takes title, author, and price as parameters.
Print the values of the variables for each constructor.
 */


    public class Book {

        private String title;
        private String author;
        private double price;

        public Book() {

            this.title = "Unknown";

            this.author = "Unknown";

            this.price = 0.0;
        }


        public Book(String title, String author) {

            this.title = title;

            this.author = author;

            this.price = 0.0;
        }


        public Book(String title, String author, double price) {

            this.title = title;

            this.author = author;

            this.price = price;
        }


        public static void main(String[] args) {

            Book book1 = new Book();

            System.out.println("Book1 Title: " + book1.title);
            System.out.println("Book1 Author: " + book1.author);
            System.out.println("Book1 Price: " + book1.price);


            Book book2 = new Book("MR Bright", "Kwmame Cash");

            System.out.println("Book2 Title: " + book2.title);
            System.out.println("Book2 Author: " + book2.author);
            System.out.println("Book2 Price: " + book2.price);


            Book book3 = new Book("LIfe", "Mr Dadson", 18.99);
            // Print the values of the instance variables for book3
            System.out.println("Book3 Title: " + book3.title);
            System.out.println("Book3 Author: " + book3.author);
            System.out.println("Book3 Price: " + book3.price);
        }
    }



