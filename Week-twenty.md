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
                            









3. **CS50**




                  


   To-Do App!
                  
                  
                  
                  todo/models.py
                  
                  from django.db import models
                  
                  class Task(models.Model):
                      title = models.CharField(max_length=200)
                      complete = models.BooleanField(default=False)
                      created = models.DateTimeField(auto_now_add=True)
                  
                      def __str__(self):
                          return self.title
                  
                  
                  
                  
                   todo/admin.py:
                  
                  
                  from django.contrib import admin
                  from .models import Task
                  
                  admin.site.register(Task)
                  
                  
                  
                   todo/urls.py:
                  
                  
                  from django.urls import path
                  from . import views
                  
                  urlpatterns = [
                      path('', views.index, name='list'),
                      path('update_task/<int:pk>/', views.updateTask, name='update_task'),
                      path('delete_task/<int:pk>/', views.deleteTask, name='delete_task'),
                  ]
                  
                  
                  
                  
                  
                  
                  todoproject/urls.py, 
                  
                  from django.contrib import admin
                  from django.urls import path, include
                  
                  urlpatterns = [
                      path('admin/', admin.site.urls),
                      path('', include('todo.urls')),
                  ]
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  todo/views.py:
                  
                  
                  
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
                  
                      context = {'tasks': tasks, 'form': form}
                      return render(request, 'todo/list.html', context)
                  
                  def updateTask(request, pk):
                      task = Task.objects.get(id=pk)
                      form = TaskForm(instance=task)
                  
                      if request.method == 'POST':
                          form = TaskForm(request.POST, instance=task)
                          if form.is_valid():
                              form.save()
                              return redirect('/')
                  
                      context = {'form': form}
                      return render(request, 'todo/update_task.html', context)
                  
                  def deleteTask(request, pk):
                      task = Task.objects.get(id=pk)
                      if request.method == 'POST':
                          task.delete()
                          return redirect('/')
                  
                      context = {'task': task}
                      return render(request, 'todo/delete_task.html', context)
                  
                  
                  
                  
                  
                  
                  
                  todo/forms.py:
                  
                  
                  from django import forms
                  from .models import Task
                  
                  class TaskForm(forms.ModelForm):
                      class Meta:
                          model = Task
                          fields = '__all__'
                  
                  
                  
                  
                  
                  
                  
                  
                  todo/templates/todo/
                  
                  <h2>To-Do List</h2>
                  <form method="POST">
                      {% csrf_token %}
                      {{ form }}
                      <input type="submit" value="Add Task">
                  </form>
                  
                  <ul>
                      {% for task in tasks %}
                          <li>
                              {{ task.title }}
                              <a href="{% url 'update_task' task.id %}">Edit</a>
                              <a href="{% url 'delete_task' task.id %}">Delete</a>
                          </li>
                      {% endfor %}
                  </ul>
                  
                  
                  
                  
                   update_task.html
                  
                  <h2>Update Task</h2>
                  <form method="POST">
                      {% csrf_token %}
                      {{ form }}
                      <input type="submit" value="Update">
                  </form>
                  
                  
                  
                  delete_task.html
                  
                  <h2>Delete Task</h2>
                  <p>Are you sure you want to delete "{{ task }}"?</p>
                  <form method="POST">
                      {% csrf_token %}
                      <input type="submit" value="Yes, Delete">
                  </form>




















