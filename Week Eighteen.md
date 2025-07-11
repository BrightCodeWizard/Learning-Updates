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






