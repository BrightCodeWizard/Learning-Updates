1. **Java**


      Using Classes  
Class
Class is a blueprint or template for creating objects.  It defines the variable and methods that the object created from the class will have. 

Instance 
An instance is an actual object created from a class using the “new” keyword. 
 
References and Values 

Reference: 
In java, when you create an object, the variable doesn’t hold the object directly. It holds a reference (or address) to the object in memory. 

Value
The store the directly the actual data. 








2. **MIT**



                  
                  
                  #Recurssion Practice
                  # Problem 1:
                  # Write a recursive program to calculate the sum of the positive
                  
                  def sum_series(n):
                      if n<0:
                          return 0
                      else:
                          return n + sum_series(n - 2)
                  
                  
                  #Problem 2:
                      # Write a recursive program to calculate the value of 'a' to the power 'b'
                      def power(a,b):
                          if b == 0:
                              return 1
                          else:
                              return a * power(a, b-1)
                  
                  
                  #Problem 3:
                  # Write a recursive program to calculate the sum of a list of numbers.
                  
                      def list_sum(num_List):
                          if len(num_List) == 1:
                              return num_List[0]
                          else:
                              return num_List[0] + list_sum(num_List[1:])
                  
                  
                  
                  #Problem 4:
                  # Write a recursive program to calculate the nth harmonic number
                  
                      def harmonic(n):
                          if n == 1:
                              return 1
                          else:
                              return 1/n + harmonic(n-1)
                  
                  
                  
                  #Problem 5:
                  # Write a recursive program to find the greatest common divisor(gcd) of two integer
                  
                      def gcd(a,b):
                          if (b==0):
                              return a
                          else:
                              return gcd(b,a%b)
                  
                  
                  
                  #Problem 4:
                  # Write a recursive prog    aZ\ram to
                  
                  
                  
                  
                  
                  
                  
                  
                            public class Class {
                            String color;
                            int speed;
                        
                            void drive(){
                                System.out.println("The car is drive at " + speed + "km/h");
                            }
                        }
                        
                        public class Main {
                            public static void main(String[] arg){
                                Class car1 = new Class();
                                car1.color = "Red";
                                car1.speed = 100;
                        
                        
                                Class car2 = new Class();
                                car2.color = "Blue";
                                car2.speed = 80;
                        
                        
                                car1.drive();
                                car2.drive();
                            }
                        }
                  
                  
                  
                  
                  
                  
                            
                            
                            public class Reference {
                             String name;
                            }
                            
                            public class Reference {
                                public static void main(String[] arg){
                                    Reference p1 = new Reference();
                                    p1.name = "Bright";
                            
                                    Reference p2 = p1;
                                    p2.name = "BOD";
                            
                                    System.out.println(p1.name);
                                    System.out.println(p2.name);
                            
                            
                                    int x = 5;
                                    int y = x;
                                    y = 20;
                            
                                    System.out.println(x);
                                    System.out.println(y);
                                }
                            }
                            









