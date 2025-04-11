1.Java 

/*Create a Student class that will hold the 
student information (name, roll number, and grade)*/



    public class Student {

        private String name;
        private int rollNumber;
        private String grade;

        //student details
        public Student(String name, int rollNumber, String grade) {
        this.name = name;
        this.rollNumber = rollNumber;
        this.grade = grade;
    }

    public String getName() {
        return name;
    }

   
    public void setName(String name) {
        this.name = name;
    }

    
        public int getRollNumber() {
            return rollNumber;
        }

        public void setRollNumber(int rollNumber) {
            this.rollNumber = rollNumber;
        }

   
        public String getGrade() {
            return grade;
        }

  
        public void setGrade(String grade) {
        this.grade = grade;
        }

    
   
        public String toString() {
            return "Name: " + name + ", Roll Number: " + rollNumber + ", Grade: " + grade;
        }
    }









2. Web development 



     //i made a feedback page and i published it on netlify 

       https://sparkly-macaron-2febf6.netlify.app/








3. Database


   --Use SQL to populate the Customer_T with the following:  CustomerID: 402067, CustomerName: Just Wills,
   CustomerAddress: 0023 Wills Main Street, CustomerCity: Koforidua, CustomerRegion: Eastern,
   Customer Postal Code:  ERA1235, Customer Contact Number: +2334587778777 ----                       


        INSERT INTO Customer_T (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerRegion, CustomerPostalCode, CustomerContactNumber)
        VALUES (402067, 'Just Wills', '0023 Wills Main Street', 'Koforidua', 'Eastern', 'ERA1235', '+2334587778777');

