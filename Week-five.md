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









Web development 


