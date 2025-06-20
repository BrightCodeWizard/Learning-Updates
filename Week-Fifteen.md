**MIT**
Iteration
 Iteration in Python refers to the process of repeating a process multiple time. It's like telling the computer, “Keep doing this until I say stop” or “Do this for every item in a collection.”

Way to perform iteration in python  
While loops: this loop keeps running as a condition is true. 
Examples


Control flow: while loops 
Control flow refers to the order in which a program executes its instructions. 
It iterates through numbers in a sequence. 

For loops: this loop is used to iterate over a sequence (like a list, string, or rage)


      #Example 1
    where = input("You are in the Lost Forest. Go left or right? ")
    while where == "right":
      where = input("You are in the Lost Forest. Go left or right? ")
    print("You got out of the lost forest! \o/")
    
    
    #Example 2
    n =  int(input("Enter a non-negative integer:  "))
    while n > 0:
       print('x')
    n = n-1
    
    
    while True:
        print("nooooooo")
    
    # You Try It 1:
    # Expand this code to show a sad face when the user entered
    # the while loop more than 2 times. Hint: use a counter
    
    where = input("Go left or right? ")
    counter = 0
    while where == "right":
        counter = counter + 1
        if counter > 2:
            print(":(")
        where = input("Go left or right? ")
    print("You got out!")




      #YOU TRY IT!
     # What do these print?
    for i in range (1, 4, 1):
        print(i)
    for j in range(1, 4, 2):
        print(j*2)
    for me in range(4, 0, -1):
        print("$" * me)
    
    
    
    
    
    
    # Fix this code to use variables start and end in the range, to get
     #the total sum between and including those values.
    #For example, if start=3 and end=5 then the sum should be 12
    
    mysum = 0
    start = 1
    end = 3
    for i in range(start, end+1):
        mysum+=i
    print(mysum)



    #with while loops
    x = 6
    i = 1
    one = 1
    while i <= x:
        one *= 1
        i += 1
    print(f'(x) one is {one}')
    
    
    ##with for loops
    two = 1
    for i in range(1, x+1, 1):
        two*=i
        print(f'{x} two is {two}')
    
    
      #examples 0ne
    mysum = 0
    for i in range(10):
        mysum += i
    print(mysum)
    
    
    #example two
    mysum = 0
    for i in range(7, 10):
        mysum += i
    print(mysum)
    
    
    #example three
    mysum = 0
    for i in range(5, 11, 2):
        mysum += i
        break
        if mysum == 5:
            break
            mysum += 1
    print(mysum)
















**CS50**




Django


Django is a framework which is use to write Python code that is able to dynamically generate HTML and CSS, ultimately allowing us to build a dynamic web application. Django is a set of tools that is already built. 
Hyper Text Transfer Protocol (HTTP): which has the protocol for how messages are going to be sent back and forth over the internet.


Response that are return form the server




1.	GET /HTTP/1.1

   
Host: www.examples.com  
  Get is an example of a request method, a way that might try to get a page. In this case, the page we trying to get is the slash page. 

HTTP 1-1 is just the version of HTTP that we’re using. 
Host is what URL we’re trying to access the web page for. 


2.	HTTP/1.1 200 ok
   
Content-Type: text/html
……….

200 is a respond code with means OK. This means the page was return successfully.
Content-Type: text/html means the format of the data that’s coming back in response is HTML data. 

HTTP Status Codes
Status	Description
200	Ok
301	Moved permanently
403	Forbidden
404	Not found
500	Internal server Error

Steps needed in order to use in Django 
Install Django (pip3 install Django) 
Pip
Pip is a python package manger, which make it easy to able to install new packages. 
Create a Django project 
Open terminal and type in the following command
1.	django-admin startproject PROJECT_NAME. 
2.	Type LS to show the list of the folder created.  
3.	Now open the folder in a file editor.  
Files inside the folder 
a.	settings.py: it contains importance configuration setting for our Django application.  
b.	url.py: it’s a sort of table contents for web application. It contains all of ULR in my web application that ultimately visit. 
How run the web application in Django
1.	open terminal and type in “python manage.py runserver”. 
This how manage.py used.
2.	After running the command, a bunch of debugging output. 
As part of the output, you will see http://127.0.0.1:8000/  127.0.0.1 is an IP address of the internet. Which refers to your local computer. And 8000 is the port number. It refers to the server being run. In this case, the Django application is running on port 8000. 
Copy the URL http://127.0.0.1:8000/  and run it in web browser. It will show Django’s default page to which display our “installation of Django works”. So, what we create is call a Django project. So, the structured in way that’s a big website, a big project has 
Multiple different app that are sort of separate services that operate within it. Google for example, has Google search., but also Google images, and Google New, and google Map. We can think of each of those individual services as a separate app all under one large project like Google. Django come preloaded with its ability to take a project and divide it into multiple distinct apps.
Getting started with Django
-	The first thing we’ll need to do after we create a project is create a Django app. 
o	How to crate Django app
	Go to the terminal and type in “python manage.py startapp fileanme”
•	This will create a folder inside the project. Which will contain the information for the  app to work. 
o	Files in the app folder
	views.py: it describe what it is user sees when they visit a particular route, for example, where we can decide what gets rendered to the user.  






Windows PowerShell
Copyright (C) Microsoft Corporation. All rights reserved.

Install the latest PowerShell for new features and improvements! https://aka.ms/PSWindows

PS C:\Users\Obrighter🌞> cd Downloads
PS C:\Users\Obrighter🌞\Downloads> ls


    Directory: C:\Users\Obrighter🌞\Downloads


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----         6/20/2025  10:43 AM                MyProject
-a----         6/20/2025   9:48 AM      226334815 AQNQkQb3osJVj-lkZAKOr
                                                  3FDbFsmQOcJ84NSxfDcwJ
                                                  M4gQyx77PhX1HcUYZtdUi
                                                  NswKyZ41Q8Rpmfz0FlD9E
                                                  XwpF.mp4
-a----         6/20/2025   9:59 AM        7444668 AQPa1V6pHbWGbjBDRbCbn
                                                  FmmL--lO2mn7QtzMw77r0
                                                  0iCZPTNviK53rSNJaiwP4
                                                  Y-K1JP0yWA2w4sR3eWqyV
                                                  62s_.mp4


PS C:\Users\Obrighter🌞\Downloads> cd MyProject
PS C:\Users\Obrighter🌞\Downloads\MyProject> python -m venv project
PS C:\Users\Obrighter🌞\Downloads\MyProject> .\project\Scripts\activate
.\project\Scripts\activate : File
C:\Users\Obrighter🌞\Downloads\MyProject\project\Scripts\Activate.ps1
cannot be loaded because running scripts is disabled on this system.
For more information, see about_Execution_Policies at
https:/go.microsoft.com/fwlink/?LinkID=135170.
At line:1 char:1
+ .\project\Scripts\activate
+ ~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : SecurityError: (:) [], PSSecurityExcepti
   on
    + FullyQualifiedErrorId : UnauthorizedAccess
PS C:\Users\Obrighter🌞\Downloads\MyProject> Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
PS C:\Users\Obrighter🌞\Downloads\MyProject> pip install django
Requirement already satisfied: django in c:\users\obrighter🌞\appdata\local\programs\python\python313\lib\site-packages (5.2.3)
Requirement already satisfied: asgiref>=3.8.1 in c:\users\obrighter🌞\appdata\local\programs\python\python313\lib\site-packages (from django) (3.8.1)
Requirement already satisfied: sqlparse>=0.3.1 in c:\users\obrighter🌞\appdata\local\programs\python\python313\lib\site-packages (from django) (0.5.3)
Requirement already satisfied: tzdata in c:\users\obrighter🌞\appdata\local\programs\python\python313\lib\site-packages (from django) (2025.2)
PS C:\Users\Obrighter🌞\Downloads\MyProject> django-admin --version
5.2.3
PS C:\Users\Obrighter🌞\Downloads\MyProject> django-admin --version
5.2.3
PS C:\Users\Obrighter🌞\Downloads\MyProject> cd Download\project
cd : Cannot find path
'C:\Users\Obrighter🌞\Downloads\MyProject\Download\project' because it
does not exist.
At line:1 char:1
+ cd Download\project
+ ~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (C:\Users\Obrigh...ownlo
   ad\project:String) [Set-Location], ItemNotFoundException
    + FullyQualifiedErrorId : PathNotFound,Microsoft.PowerShell.Comman
   ds.SetLocationCommand

PS C:\Users\Obrighter🌞\Downloads\MyProject> django-admin startproject work .
PS C:\Users\Obrighter🌞\Downloads\MyProject> python manage.py migrate
Operations to perform:
  Apply all migrations: admin, auth, contenttypes, sessions
Running migrations:
  Applying contenttypes.0001_initial... OK
  Applying auth.0001_initial... OK
  Applying admin.0001_initial... OK
  Applying admin.0002_logentry_remove_auto_add... OK
  Applying admin.0003_logentry_add_action_flag_choices... OK
  Applying contenttypes.0002_remove_content_type_name... OK
  Applying auth.0002_alter_permission_name_max_length... OK
  Applying auth.0003_alter_user_email_max_length... OK
  Applying auth.0004_alter_user_username_opts... OK
  Applying auth.0005_alter_user_last_login_null... OK
  Applying auth.0006_require_contenttypes_0002... OK
  Applying auth.0007_alter_validators_add_error_messages... OK
  Applying auth.0008_alter_user_username_max_length... OK
  Applying auth.0009_alter_user_last_name_max_length... OK
  Applying auth.0010_alter_group_name_max_length... OK
  Applying auth.0011_update_proxy_permissions... OK
  Applying auth.0012_alter_user_first_name_max_length... OK
  Applying sessions.0001_initial... OK
PS C:\Users\Obrighter🌞\Downloads\MyProject> python manage.py runserver
Watching for file changes with StatReloader
Performing system checks...

System check identified no issues (0 silenced).
June 20, 2025 - 10:53:54
Django version 5.2.3, using settings 'work.settings'
Starting development server at http://127.0.0.1:8000/
Quit the server with CTRL-BREAK.

WARNING: This is a development server. Do not use it in a production setting. Use a production WSGI or ASGI server instead.
For more information on production servers see: https://docs.djangoproject.com/en/5.2/howto/deployment/
[20/Jun/2025 11:34:50] "GET / HTTP/1.1" 200 12068
Not Found: /favicon.ico
[20/Jun/2025 11:34:51] "GET /favicon.ico HTTP/1.1" 404 2206
C:\Users\Obrighter🌞\Downloads\MyProject\work\settings.py changed, reloading.
Watching for file changes with StatReloader
Performing system checks...

System check identified no issues (0 silenced).
June 20, 2025 - 12:55:10
Django version 5.2.3, using settings 'work.settings'
Starting development server at http://127.0.0.1:8000/
Quit the server with CTRL-BREAK.

WARNING: This is a development server. Do not use it in a production setting. Use a production WSGI or ASGI server instead.
For more information on production servers see: https://docs.djangoproject.com/en/5.2/howto/deployment/
C:\Users\Obrighter🌞\Downloads\MyProject\work\settings.py changed, reloading.
Watching for file changes with StatReloader
Performing system checks...

System check identified no issues (0 silenced).
June 20, 2025 - 12:55:17
Django version 5.2.3, using settings 'work.settings'
Starting development server at http://127.0.0.1:8000/
Quit the server with CTRL-BREAK.


