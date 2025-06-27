1. **Java**



 Array
 
Arrays are indexed list of values.  It can be done with any data type. Such int, string, double String, etc. 


All element if an array must have same type. Arrays the index start a zero and ends at length-1.


An Arrays is represented using TYPE []. It is another type. 


How to create an array.
1.	Use the operator “new:” to create an array of a given size. Variables can be used to specify the size 
Array initialization 
To initialize an array, use curly braces ({}). It is being used only when declaring a variable. 
Accessing Arrays 
The operator []: is used to access the elements of an array. 



The length variable 
In java, you can access the length using the “length” field. It’s a public final, so you can directly access it without using parentheses. 
Example


String arrays 
A string array in java is an array that can hold multiple “String” objects. 
Combining loops and arrays 
Combining loops and arrays is fundamental in almost any programming language, including java. Loops provide the mechanism to process each element in an array, while arrays give you a structured way to store multiple pieces of data.
Looping through an array.



     import java.sql.SQLOutput;
     
  
     public class Arrays {
         public static  void main(String[]arg){
             int [] values = new int [5];
             values [0] = 12;
             values [4] = 12;
             //values [5] = 12;
     
            // Accessing Array
             int[] values  = {12, 24, -23, 47};
             values[3] = 18;
             int x  = values [1] + 3;
             System.out.println(values);
     
             //the length variable
             int[] values = new int[12];
             int size =  values.length;
     
             //  String arrays
             public static void main (String[]arg){
                 System.out.println(arg.length);
                 System.out.println(arg [0]);
                 System.out.println(arg [1]);
             }
     
     
             // looping through an array
             // example 1
             int [] values = new  int[15];
     
             for (int i = 0; i < values.length; 1++) {
                 values [i] = i;
                 int y = values[i] * values[i];
                 System.out.println(y);
             }
     
             //example 2
             int [] values = new int[5];
             int i = 0;
             while (i < values.length) {
                 values[i] = i;
                 int y = values = values[i] * values;
                 System.out.println(y);
                 1++;
             }
     
         }
     }



  
    public class Assignment {
        public static void main (String[]arg){
            String[]names = {
                "Kofi", "Ama", "Kwame", "Kojo"
            };
            int []time = {
                    200,220,230,210
            };
            for(int i = 0; i < names.length; i++){
                System.out.println(names[i] +":" + time[i]);
            }
        }
    }













2. **MIT **





 Loop over string guess-and-check, binary 

 break statement-
it is used to exit loop that surrounds that break statement.  
Strings and loops 


    
    from wsgiref.util import guess_scheme
    
    sum = 0
    for i in range(5, 11, 2):
        sum +=i
        if sum == 5:
            break
            sum += 1
            print(sum)
    
    
    # looping over characters
        s = "demo loops-fruit loops"
        for index in range(len(s)):
            if s[index] == 'i' or s[index] == 'u':
                print("There is an i or u")
    
        s = "demo loops - fruit loops"
        for char in s:
            if char == 'i' or char == 'u':
                print("there is an i or u")
    
    
    s = "demo loops - fruit loops"
    for char in s:
        if char in 'iu':
            print("There is an i or u")
    
    
    # rebot cheerleaders
        an_letters = "aehilmnorsxAEFHILMNORS"
        word = input("l will cheer for you! Enter a word: ")
        times = int(input("Enthusiasm level (1-10): "))
    
    
    for w in word:
        if w in an_letters:
            print(f'Give me an {c}: {c} ')
            print("Give me an " + w + " :" w)
        eles:
        print("What does that spell?")
            for i in range{time}:
                print(word, "!!!")
    
    
    
    
    
    #guessing perfect square roots
    x = int(input("Enter an integer: "))
    guess = 0
    while guess**2 < x:
        guess +=1
    if guess*2 == x:
        print(f'square root of {x} is {guess}')
    else:
        print(f'{x} is not a perfect square')
    
    
    
    #square root with negative flag
        guess  = 0
        neg_flag = False
        x = int(input("Enter a positive integer:  "))
        if x < 0:
            neg_flag = True
        while guess**2 < x
            guess = guess + 1
        if guess**2 == x:
            print(f'Square root of {x}is {guess}')
        else:
            print(f'Square root of {x} is {guess}')
            if neg_flag:
                print(f'just  checking... did you mean {x}?')
    
    
    #cube root
    # finding a perfect cube of positive numbers
        cube = int(input("Enter an integer:  "))
        for guess in range (cube+1):
            if guess**3 == cube:
                print(f'Cube root of {cube} is guess')
                if guess**3 == cube:
                    print(f'Cube root of {cube}is {guess}')
    
    
    #finding a perfect cube of negative numbers
        cube = int(input("Enter an integer: "))
        for guess**3 == abs(cube):
            if  cube < 0;
                guess = -guess
            print(f'Cube root of {str(cube)} is {str(guess)}')
    
    
    
    ##Write code that loops a for loop over some range
    ##and prints how many even numbers are in that range. Try it with:
        range(5)
        range(10)
        range(2,9,3)
        range(-4,6,2)
        range(5, 6)
    
    #Assume you are given a string of lowercase letters in variable s.
    # Count how many unique letters there are in s. For example, if
    # s = "abca" Then your code prints 3.
     s 'abca'
    seen =""
    for char in s:
        if char not in seen:
            seen += char
    print(len(seen))
    
    
    # Hardcode a number as a secret number. Write a program that
    # checks through all the numbers between 1 to 10 and prints the
    # secret value. If it's not found, it doesn't print anything.
     secret = 6
     for i in range(1,11):
         if i == secret:
             print("found")








3. **CS50**





Getting started with Django
-	The first thing we’ll need to do after we create a project is create a Django app. 
o	How to crate Django app
	Go to the terminal and type in “python manage.py startapp fileanme”
•	This will create a folder inside the project. Which will contain the information for the app to work. 
o	Files in the app folder
	views.py: it describes what it is user sees when they visit a particular route, for example, where we can decide what gets rendered to the user.  







In order to create view in Django, we need to define a function. 
Ulrs.py: we need to create this file for the app to separate things out into different places. Such that if we have multiple different apps, each of which is doing something independent.


 

Django is free and open-source framework for building web apps with python. 





    """
    Django settings for Myproject project.
    
    Generated by 'django-admin startproject' using Django 5.2.3.
    
    For more information on this file, see
    https://docs.djangoproject.com/en/5.2/topics/settings/
    
    For the full list of settings and their values, see
    https://docs.djangoproject.com/en/5.2/ref/settings/
    """
    
    from pathlib import Path
    
    # Build paths inside the project like this: BASE_DIR / 'subdir'.
    BASE_DIR = Path(__file__).resolve().parent.parent
    
    
    # Quick-start development settings - unsuitable for production
    # See https://docs.djangoproject.com/en/5.2/howto/deployment/checklist/
    
    # SECURITY WARNING: keep the secret key used in production secret!
    SECRET_KEY = 'django-insecure-wd_yj*aow=cyyv^(h)6%zzyi&5vh)(@=^@s)ju1maaz26un&ed'
    
    # SECURITY WARNING: don't run with debug turned on in production!
    DEBUG = True
    
    ALLOWED_HOSTS = []
    
    
    # Application definition
    
    INSTALLED_APPS = [
        'hello',
        'django.contrib.admin',
        'django.contrib.auth',
        'django.contrib.contenttypes',
        'django.contrib.sessions',
        'django.contrib.messages',
        'django.contrib.staticfiles',
    ]
    
    MIDDLEWARE = [
        'django.middleware.security.SecurityMiddleware',
        'django.contrib.sessions.middleware.SessionMiddleware',
        'django.middleware.common.CommonMiddleware',
        'django.middleware.csrf.CsrfViewMiddleware',
        'django.contrib.auth.middleware.AuthenticationMiddleware',
        'django.contrib.messages.middleware.MessageMiddleware',
        'django.middleware.clickjacking.XFrameOptionsMiddleware',
    ]
    
    ROOT_URLCONF = 'Myproject.urls'
    
    TEMPLATES = [
        {
            'BACKEND': 'django.template.backends.django.DjangoTemplates',
            'DIRS': [],
            'APP_DIRS': True,
            'OPTIONS': {
                'context_processors': [
                    'django.template.context_processors.request',
                    'django.contrib.auth.context_processors.auth',
                    'django.contrib.messages.context_processors.messages',
                ],
            },
        },
    ]
    
    WSGI_APPLICATION = 'Myproject.wsgi.application'
    
    
    # Database
    # https://docs.djangoproject.com/en/5.2/ref/settings/#databases
    
    DATABASES = {
        'default': {
            'ENGINE': 'django.db.backends.sqlite3',
            'NAME': BASE_DIR / 'db.sqlite3',
        }
    }
    
    
    # Password validation
    # https://docs.djangoproject.com/en/5.2/ref/settings/#auth-password-validators
    
    AUTH_PASSWORD_VALIDATORS = [
        {
            'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
        },
        {
            'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
        },
        {
            'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
        },
        {
            'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
        },
    ]
    
    
    # Internationalization
    # https://docs.djangoproject.com/en/5.2/topics/i18n/
    
    LANGUAGE_CODE = 'en-us'
    
    TIME_ZONE = 'UTC'
    
    USE_I18N = True
    
    USE_TZ = True
    
    
    # Static files (CSS, JavaScript, Images)
    # https://docs.djangoproject.com/en/5.2/howto/static-files/
    
    STATIC_URL = 'static/'
    
    # Default primary key field type
    # https://docs.djangoproject.com/en/5.2/ref/settings/#default-auto-field
    
    DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'






    from django.shortcuts import HttpResponse
    from django.shortcuts import render
    
    # Create your views here.
    def index(request):
        return HttpResponse("Hello!")
    
    def bright(request):
        return HttpResponse("Hello,Bright")
    
    def Kofi(reqest):
        return HttpResponse("Hello, Kofi!")


    from django.urls import path
    
    
    from . import views
    
    
    urlpatterns = {
        path("", views.index, name="index"),
        path("bright", views.bright, name="bright"),
        path("Kofi", views.Kofi, name="Kofi")
    }






    """
    URL configuration for Myproject project.
    
    The `urlpatterns` list routes URLs to views. For more information please see:
        https://docs.djangoproject.com/en/5.2/topics/http/urls/
    Examples:
    Function views
        1. Add an import:  from my_app import views
        2. Add a URL to urlpatterns:  path('', views.home, name='home')
    Class-based views
        1. Add an import:  from other_app.views import Home
        2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
    Including another URLconf
        1. Import the include() function: from django.urls import include, path
        2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
    """
    from django.contrib import admin
    from django.urls import path, include
    
    
    urlpatterns = [
        path('admin/', admin.site.urls),
        path('hello/', include("hello.urls"))
    ]



        








