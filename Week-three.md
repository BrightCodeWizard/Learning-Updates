Java programming 
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

    // Constructor to initialize values
    public Student(String name, int rollNumber, double marks) {
        
    }

    
    public void displayDetails() {
      
    }

    
    public void checkPass() {
    }

    public static void main(String[] args) {
    }
}



