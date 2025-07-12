**Java**







Object oriented Programming 




in real word represent OOP is a baby with feature Name, sex, weight, Decibels.




first of all object means real world entity such as pen, computer watch. OOP is a methodology of the paradigm to design a program using CLASSES and OBJECT. 
Features of OOP
1.	Inheritance
2.	Object 
3.	Polymorphism
4.	Classes
5.	Abstraction  
6.	Encapsulation 

Java naming conversion 



Java naming conversion is a rule to follow as you decide what to name your identifier such as class package variable constant methods.
Also, it is not forced to follow. It is known as conversion not rules. This conversion suggested by serval java communities such SUN MICRO SYSTEMS and NETSCAPE.
All classes interface and packages methods and fields of the java programming language are given according to them java naming conventions.  If you fail to convention, it may generate confusion.


Object and classes 

Class 

 A class is a group of objects which have common properties. It is a template or blueprint from which objects are crated. It is a logical entity. It can’t be physical. 



Object
An entity that has state and behavior. e.g., chair, pen etc. it can be physical or logical (tangible and intangible). The example of an intangible object is the banking system. 


Characteristics of the object

1.	Stat: represent the data of an object. 
2.	Behavior: represent the behavior of an object such deposit  
3.	Identity: it is used internally JVM to identify each object uniquely 




Encapsulation



The concept of encapsulation is to hide inner details. You can abstract away the insides of the class.  
Encapsulation through the eyes of GETTERS and SETTERD

 
 These are methods or function attached to object that allow to gate access to our attribute. 


 
GETTERS and SETTERD allows us to have a consistent interface with working objects. 








  
      //    public static void main(String[]arg){
      //        System.out.println("Hello world");
      //        User u = new User();
      //        u.set_name("bright");
      //        u.membership = "Gold";
      //
      //
      //        System.out.println(u.get_name());
      //    }
      
      
          import java.awt.Color;
      import java.awt.Dimension;
      import java.awt.Graphics;
      import java.awt.Graphics2D;
      import java.awt.RenderingHints;
      import java.awt.event.WindowAdapter;
      import java.awt.event.WindowEvent;
      
      import javax.swing.JFrame;
      import javax.swing.JPanel;
      
      class Lecture4 {
      
          /** Displays a window and delegates drawing to DrawGraphics. */
          public class SimpleDraw extends JPanel implements Runnable {
              private static final long serialVersionUID = -7469734580960165754L;
              private boolean animate = true;
              private final int FRAME_DELAY = 50; // 50 ms = 20 FPS
              public static final int WIDTH = 300;
              public static final int HEIGHT = 300;
              private DrawGraphics draw;
      
      
              public SimpleDraw(DrawGraphics drawer) {
                  this.draw = drawer;
              }
      
              /** Paint callback from Swing. Draw graphics using g. */
              public void paintComponent(Graphics g) {
                  super.paintComponent(g);
      
                  // Enable anti-aliasing for better looking graphics
                  Graphics2D g2 = (Graphics2D) g;
                  g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
                  draw.draw(g2);
              }
      
              /** Enables periodic repaint calls. */
              public synchronized void start() {
                  animate = true;
              }
      
              /** Pauses animation. */
              public synchronized void stop() {
                  animate = false;
              }
      
              private synchronized boolean animationEnabled() {
                  return animate;
              }
      
              public void run() {
                  while (true) {
                      if (animationEnabled()) {
                          repaint();
                      }
      
                      try {
                          Thread.sleep(FRAME_DELAY);
                      } catch (InterruptedException e) {
                          throw new RuntimeException(e);
                      }
                  }
              }
      
              public static void main(String args[]) {
                  final SimpleDraw content = new SimpleDraw(new DrawGraphics());
      
                  JFrame frame = new JFrame("Graphics!");
      
                  Color bgColor = Color.white;
                  frame.setBackground(bgColor);
                  content.setBackground(bgColor);
      //        content.setSize(WIDTH, HEIGHT);
      //        content.setMinimumSize(new Dimension(WIDTH, HEIGHT));
                  content.setPreferredSize(new Dimension(WIDTH, HEIGHT));
      //        frame.setSize(WIDTH, HEIGHT);
                  frame.setContentPane(content);
                  frame.setResizable(false);
                  frame.pack();
                  frame.addWindowListener(new WindowAdapter() {
                      public void windowClosing(WindowEvent e) { System.exit(0); }
                      public void windowDeiconified(WindowEvent e) { content.start(); }
                      public void windowIconified(WindowEvent e) { content.stop(); }
                  });
      
                  new Thread(content).start();
      
                  frame.setVisible(true);
              }
          }









2.** MITOPENWARE**









Bisection search 
Bisection search is a method that you can use to solve problems where there is some sort of order to the thing trying to search. 





       
       #List concatenation
       
       # Original_list = [0,2,35,10,5,8,9,23]
       # a) Using List concatenation create a new list from the orignal list,
       # removing all multiples of 5 from a list of numbers.
       # expected output: [1, 2, 8, 9, 23]
       
       Original_list = [0, 2, 35, 10, 5, 8, 9, 23]
       
       new_list = [i for i in Original_list if i%5 != 0]
       print(new_list)
       
       
       # b) Using list concatenation create a new list from the original list,
       # where each element is half the original element
       # Expected output: [0.5, 1.0, 17.5, 5.0, 2.5, 4.0, 4.5, 11.5]
       
       new_list = [i/2 for i in Original_list]
       print(new_list)
       
       
       
       
       
       
       # Problem 2: Write a Function to insert a specified element x in a given list
       # after every nth element.
       # Return the new list.
       # Example
       # Original list:
       # [1, 3, 5, 7, 9, 11, 0, 2, 4, 6, 8, 10, 8, 9, 0, 4, 3, 0]
       # Insert 20 in list after every 4th element:
       # [1, 3, 5, 7, 20, 9, 11, 0, 2, 20, 4, 6, 8, 10, 20, 8, 9, 0, 4, 20, 3, 0]
       
       
       def insert_element_list1(lst, x, n):
           """
           Parameters:
           lis: input list
           x: element to insert
           n:x will be inserted after every nth element
           Returns: new modified list
           """
       
           output_list = []
           for i in range(len(lst)):
               output_list.append(lst=[i])
               if(i+1)% n ==0:
                   output_list.append(x)
               return output_list
       
       
       nums = [1,3,5,7,9,11,0,2,4,6,8,9,0,4,3,0]
       x = 20
       n = 4
       print(insert_element_list1(nums,x,n))
       nums =[1,3,5,7,9,11,0,2,4,6,8,10,8,9,0,4,3,0]
       print(insert_element_list1(nums,x,n))
       
       
       
       
       
       # Problem 3: Write a Function to sort list of lists containing integers such that the
       # sub-lists are sorted in increasing order. How would you sort in decreasing order?
       
       # Example:
       # Original list of tuples:
       # [[10, 10.12, 10.11], [5, 5.3, 4.9], [2.4, 2.6, 2.2]]
       # Expected output:
       # [[10, 10.11, 10.12], [4.9, 5, 5.3], [2.2, 2.4, 2.6]]
       
       
       def sort_list_of_lists(lst):
           """
           Parameters:
           lst: input list
           n: index to sort by
           Returns: the sorted list
           """
       
       
           output = []
           for i in lst:
               output.append((sorted(i)))
           return output
       
       
       items = [[10, 10.12, 10.11], [5, 5.3, 4.9], [2.4, 2.6, 2.2]]
       print(sort_list_of_lists(items))
       
       
       
       
       
       
       
       
       
       # Problem 4: Write a Function to split a given list into size n chunks
       # using list comprehension. If the list does not divide equally, the last
       # chunk should be short. Return the new list.
       
       # Example:
       # Original list:
       # [12, 45, 23, 67, 78, 90, 45, 32, 100, 76, 38, 62, 73, 29, 83]
       # Split the list into equal size 4
       # [[12, 45, 23, 67], [78, 90, 45, 32], [100, 76, 38, 62], [73, 29, 83]]
       # Split the list into equal size 5
       # [[12, 45, 23, 67, 78], [90, 45, 32, 100, 76], [38, 62, 73, 29, 83]]
       
       
       def split_list(lst,n):
        """
           Parameters:
           lst: input list
           n: size of chunks
           Returns: new split list
        """
        result = [lst[i:i+n] for i in range(0, len(lst), n)]
        return result













**CS50**

     from django.shortcuts import render
     
     def calculator_view(request):
         result = None
         if request.method == "POST":
             num1 = float(request.POST.get('num1'))
             num2 = float(request.POST.get('num2'))
             operation = request.POST.get('operation')
     
             if operation == "add":
                 result = num1 + num2
             elif operation == "subtract":
                 result = num1 - num2
             elif operation == "multiply":
                 result = num1 * num2
             elif operation == "divide":
                 result = num1 / num2 if num2 != 0 else "Error (divide by zero)"
         
         return render(request, 'calculator/calculator.html', {'result': result})









    
    <!DOCTYPE html>
    <html>
    <head>
        <title>Django Calculator</title>
    </head>
    <body>
        <h1>Simple Calculator</h1>
        <form method="post">
            {% csrf_token %}
            <input type="number" step="any" name="num1" placeholder="First number" required>
            <input type="number" step="any" name="num2" placeholder="Second number" required>
            <br><br>
            <select name="operation" required>
                <option value="add">Add (+)</option>
                <option value="subtract">Subtract (-)</option>
                <option value="multiply">Multiply (*)</option>
                <option value="divide">Divide (/)</option>
            </select>
            <br><br>
            <button type="submit">Calculate</button>
        </form>
    
        {% if result is not None %}
            <h2>Result: {{ result }}</h2>
        {% endif %}
    </body>
    </html>





     
     from django.urls import path
     from .views import calculator_view
     
     urlpatterns = [
         path('', calculator_view, name='calculator'),
     ]







