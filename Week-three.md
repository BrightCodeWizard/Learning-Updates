A) Java programming 


we did Classes and Objects. I practice some example of what we did.

1. //Create a BankAccount class that allows users to deposit, withdraw, and check their balance. Implement the class and test it in the main method.

class BankAccount {
    private double balance;

    public BankAccount(double initialBalance) {
        if (initialBalance >= 0) {
            this.balance = initialBalance;
        } else {
            System.out.println("Initial balance cannot be negative. Setting to 0.");
            this.balance = 0;
        }
    }

    
    public void deposit(double amount) {
        if (amount > 0) {
            balance += amount;
            System.out.println("Deposited: " + amount);
        } else {
            System.out.println("Deposit amount must be positive.");
        }
    }

 
    public void withdraw(double amount) {
        if (amount > 0 && amount <= balance) {
            balance -= amount;
            System.out.println("Withdrawn: " + amount);
        } else if (amount > balance) {
            System.out.println("Insufficient balance.");
        } else {
            System.out.println("Withdrawal amount must be positive.");
        }
    }

 
    public double getBalance() {
        return balance;
    }

    public static void main(String[] args) {
        BankAccount account = new BankAccount(1000); 

        account.deposit(500);
        account.withdraw(200);
        account.withdraw(2000); 

        System.out.println("Final Balance: " + account.getBalance());
    }
}


2. //Create a Student class that stores a student's name, roll number, and marks. Implement methods to:
•	Display student details
•	Check if the student has passed (pass if marks ≥ 40)



class Student {
    private String name;
    private int rollNumber;
    private double marks;

   
    public Student(String name, int rollNumber, double marks) {
        this.name = name;
        this.rollNumber = rollNumber;
        this.marks = marks;
    }

  
    public void displayDetails() {
        System.out.println("Student Name: " + name);
        System.out.println("Roll Number: " + rollNumber);
        System.out.println("Marks: " + marks);
    }

    
    public boolean hasPassed() {
        return marks >= 40;
    }

    public static void main(String[] args) {
        Student student1 = new Student("Alice", 101, 75.5);
        Student student2 = new Student("Bob", 102, 35.0);

        student1.displayDetails();
        System.out.println("Passed: " + student1.hasPassed());
        
        System.out.println();
        
        student2.displayDetails();
        System.out.println("Passed: " + student2.hasPassed());
    }
}



//Create a Calculator class that can add, subtract, multiply, and divide two numbers


class Calculator {
    
    
    public double add(double a, double b) {
        return a + b;
    }

   
    public double subtract(double a, double b) {
        return a - b;
    }


    public double multiply(double a, double b) {
        return a * b;
    }

    
    public double divide(double a, double b) {
        if (b != 0) {
            return a / b;
        } else {
            System.out.println("Error: Division by zero is not allowed.");
            return Double.NaN;
        }
    }

    public static void main(String[] args) {
        Calculator calc = new Calculator();
        
        System.out.println("Addition: " + calc.add(10, 5));
        System.out.println("Subtraction: " + calc.subtract(10, 5));
        System.out.println("Multiplication: " + calc.multiply(10, 5));
        System.out.println("Division: " + calc.divide(10, 5));
    }
}




B. Database concept 
we did Optimization & Transactions. I practice some example of what we did.


1. --You have a table employees with 1 million records. Write an SQL query to create an index on the last_name column to speed up searches.

   CREATE INDEX idx_last_name ON employees(last_name);
   SELECT * FROM employees WHERE last_name = 'Smith';




2. --Create an index on city and last_name to speed up filtering and sorting
    CREATE INDEX idx_city_lastname ON customers(city, last_name);


3. --You have a sales table with millions of records. How would you partition it based on sale_date?
   
    ALTER TABLE sales  
    PARTITION BY RANGE(YEAR(sale_date)) (  
        PARTITION p1 VALUES LESS THAN (2022),  
        PARTITION p2 VALUES LESS THAN (2023),  
        PARTITION p3 VALUES LESS THAN (2024)  
    );


4. --Write an SQL transaction to update a user's bank balance and commit the transaction.

   START TRANSACTION;
    
    UPDATE accounts SET balance = balance - 500 WHERE account_id = 1;
    UPDATE accounts SET balance = balance + 500 WHERE account_id = 2;
    
    COMMIT;


