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
          












**MIT**









Decomposition, Abstraction & Functions in Python
Abstraction hides details, showing only the interface (inputs & outputs).
Example: You use a smartphone without knowing its internal circuits.

Decomposition breaks big problems into smaller, manageable parts.

In programming: split tasks into functions.

Functions = reusable building blocks of code. They:

Have a name, parameters (inputs), docstring, body (logic), and return value (output).

Are defined once, used many times.

Support clear, modular, testable code.

Docstrings act as contracts: specify what a function does, expected inputs, and outputs.

Definition vs Call: Defining registers the function in memory; calling actually runs it.

Return vs Print:

print() displays a result (for humans).

return sends a value back (for the program to use).




             
                def is_even(n):
                 
                print(is_even(4))  
                print(is_even(7))  
                
                
                def sum_of_odds(start, end):
                
                    total = 0
                    for num in range(start, end + 1):
                        if num % 2 != 0:   
                            total += num
                    return total
                
                
                print(sum_of_odds(1, 10))   # 25 → (1+3+5+7+9)

















**CS50**

**To‑Do App**



todo/models.py
       
        from django.db import models
        
        class Task(models.Model):
            title = models.CharField(max_length=200)
            completed = models.BooleanField(default=False)
        
            def __str__(self):
                return self.title







todo/forms.py


        from django import forms
        from .models import Task
        
        class TaskForm(forms.ModelForm):
            class Meta:
                model = Task
                fields = ['title', 'completed']





todo/views.py
      
        from django.shortcuts import render, redirect
        from .models import Task
        from .forms import TaskForm
        
        def index(request):
            tasks = Task.objects.all()
            form = TaskForm()
        
            if request.method == 'POST':
                form = TaskForm(request.POST)
                if form.is_valid():
                    form.save()
                return redirect('/')
        
            return render(request, 'todo/index.html', {'tasks': tasks, 'form': form})





todo/urls.py

          

        from django.urls import path
        from . import views
        
        urlpatterns = [
            path('', views.index, name='index'),
        ]


todoproject/urls.py

        
        from django.contrib import admin
        from django.urls import path, include
        
        urlpatterns = [
            path('admin/', admin.site.urls),
            path('', include('todo.urls')),
        ]


todo/templates/todo/index.html

                
                <!DOCTYPE html>
                <html>
                <head>
                    <title>To-Do App</title>
                </head>
                <body>
                    <h1>My To-Do List</h1>
                
                    <form method="POST">
                        {% csrf_token %}
                        {{ form.as_p }}
                        <button type="submit">Add Task</button>
                    </form>
                
                    <ul>
                        {% for task in tasks %}
                            <li>
                                {{ task.title }} - 
                                {% if task.completed %} Completed {% else %} Not Done {% endif %}
                            </li>
                        {% endfor %}
                    </ul>
                </body>
                </html>






