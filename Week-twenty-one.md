**JAVA**



1. Access Control in Java


Access control in Java defines how accessible a class, method, or variable is from other classes.
Java uses access modifiers to control visibility.
Types of Access Modifiers:




a.	public
o	Accessible from anywhere (inside same class, other classes, other packages).
o	Example: System.out.println() works everywhere because it is public.
b.	protected
o	Accessible within the same package and by subclasses (even if in different package).
c.	default (no keyword, also called package-private)
o	Accessible only within the same package.
o	If you don’t specify an access modifier, Java assumes default.
d.	private
o	Accessible only inside the same class.

2. Class Scope
Scope means where a variable/method/class is accessible.
•	Local Scope → Inside a method (exists only when method runs).
•	Instance Scope → Variables declared inside a class but outside methods.
•	Class Scope (Static) → Declared with static, belongs to the class, shared across objects.

3. Packages in Java
A package is like a folder/directory that groups related classes.
It helps organize code, avoid naming conflicts, and control access.

















        
        package mypagetest;
        
        class AccessModifiers {
            //class Person{
                public String name = "John";
                private int age = 25;
                String city = "Agona";
                private String password = "secret";
        
        
                public void displayInfo() {
                    System.out.println("Name: " + name);
                    System.out.println("Age  " + age);
                    System.out.println("City:  " + city);
                    System.out.println("Password: " + password);
                }
           // }
        
            public class Access {
                public static void main(String[] arg) {
                    AccessModifiers p = new AccessModifiers();
                    System.out.println(p.name);
                    System.out.println(p.age);
                    System.out.println(p.city);
        
                }
            }





        public class Student {
            String name;
        
            static String school = "KTU";
        
            void  setName(String n){
                name = n;
            }
        
            void  display(){
                System.out.println("My name is " + name);
            }
        }
        
        public class ClassScopeExample {
            public static void main(String[] args) {
                Student s1 = new Student();
                Student s2 = new Student();
        
        
                s1.setName("John");
                s2.setName("bright");
        
                Student.school = "Global College";
                s1.display();
                s2.display();
            }
        }
        





          package mypackage;
          
          public class Car {
              public void drive() {
                  System.out.println("Car is driving......");
              }
          }
          
          
          
          
          
          import mypackage.Car;
          
          public class TestCar {
              public static void main(String[] args) {
                  Car c = new Car();
                  c.drive();
              }
          }
          












