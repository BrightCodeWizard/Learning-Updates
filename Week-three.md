A) Java programming 


we did Classes and Objects. I practice some example of what we did.

1. //Create a BankAccount class that allows users to deposit, withdraw, and check their balance. Implement the class and test it in the main method.

class BankAccount {
    private double balance;

    public BankAccount(double initialBalance) {
        if (initialBalance >= 0) {
            this.balance = initialBalance;
        } else {
            System.out.println("Initial balance cannot be negative. Setting to 0.");
            this.balance = 0;
        }
    }

    
    public void deposit(double amount) {
        if (amount > 0) {
            balance += amount;
            System.out.println("Deposited: " + amount);
        } else {
            System.out.println("Deposit amount must be positive.");
        }
    }

 
    public void withdraw(double amount) {
        if (amount > 0 && amount <= balance) {
            balance -= amount;
            System.out.println("Withdrawn: " + amount);
        } else if (amount > balance) {
            System.out.println("Insufficient balance.");
        } else {
            System.out.println("Withdrawal amount must be positive.");
        }
    }

 
    public double getBalance() {
        return balance;
    }

    public static void main(String[] args) {
        BankAccount account = new BankAccount(1000); 

        account.deposit(500);
        account.withdraw(200);
        account.withdraw(2000); 

        System.out.println("Final Balance: " + account.getBalance());
    }
}


2. //Create a Student class that stores a student's name, roll number, and marks. Implement methods to:
•	Display student details
•	Check if the student has passed (pass if marks ≥ 40)



class Student {
    private String name;
    private int rollNumber;
    private double marks;

   
    public Student(String name, int rollNumber, double marks) {
        this.name = name;
        this.rollNumber = rollNumber;
        this.marks = marks;
    }

  
    public void displayDetails() {
        System.out.println("Student Name: " + name);
        System.out.println("Roll Number: " + rollNumber);
        System.out.println("Marks: " + marks);
    }

    
    public boolean hasPassed() {
        return marks >= 40;
    }

    public static void main(String[] args) {
        Student student1 = new Student("Alice", 101, 75.5);
        Student student2 = new Student("Bob", 102, 35.0);

        student1.displayDetails();
        System.out.println("Passed: " + student1.hasPassed());
        
        System.out.println();
        
        student2.displayDetails();
        System.out.println("Passed: " + student2.hasPassed());
    }
}



3. //Create a Calculator class that can add, subtract, multiply, and divide two numbers


class Calculator {
    
    
    public double add(double a, double b) {
        return a + b;
    }

   
    public double subtract(double a, double b) {
        return a - b;
    }


    public double multiply(double a, double b) {
        return a * b;
    }

    
    public double divide(double a, double b) {
        if (b != 0) {
            return a / b;
        } else {
            System.out.println("Error: Division by zero is not allowed.");
            return Double.NaN;
        }
    }

    public static void main(String[] args) {
        Calculator calc = new Calculator();
        
        System.out.println("Addition: " + calc.add(10, 5));
        System.out.println("Subtraction: " + calc.subtract(10, 5));
        System.out.println("Multiplication: " + calc.multiply(10, 5));
        System.out.println("Division: " + calc.divide(10, 5));
    }
}




B. Database concept 


we did Optimization & Transactions. I practice some example of what we did.


1. --You have a table employees with 1 million records. Write an SQL query to create an index on the last_name column to speed up searches.

   CREATE INDEX idx_last_name ON employees(last_name);
   SELECT * FROM employees WHERE last_name = 'Smith';




2. --Create an index on city and last_name to speed up filtering and sorting
    CREATE INDEX idx_city_lastname ON customers(city, last_name);


3. --You have a sales table with millions of records. How would you partition it based on sale_date?
   
    ALTER TABLE sales  
    PARTITION BY RANGE(YEAR(sale_date)) (  
        PARTITION p1 VALUES LESS THAN (2022),  
        PARTITION p2 VALUES LESS THAN (2023),  
        PARTITION p3 VALUES LESS THAN (2024)  
    );


4. --Write an SQL transaction to update a user's bank balance and commit the transaction.

   START TRANSACTION;
    
    UPDATE accounts SET balance = balance - 500 WHERE account_id = 1;
    UPDATE accounts SET balance = balance + 500 WHERE account_id = 2;
    
    COMMIT;

C. Web baseconcept 


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Discover Paris - Your Ultimate Travel Guide</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        .card-img-container {
            padding-top: 56.25%; 
            position: relative;
        }
        .card-img-container img {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .gallery-img-container {
            padding-top: 56.25%; 
            position: relative;
        }

        
        .gallery-img-container img {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;



        }

    </style>
</head>
<body>
   
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="index.html">Discover Paris</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#home">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#attractions">Attractions</a></li>
                    <li class="nav-item"><a class="nav-link" href="#gallery">Gallery</a></li>
                    <li class="nav-item"><a class="nav-link" href="map.html">Map</a></li>
                    <li class="nav-item"><a class="nav-link" href="feedback.html">Feedback</a></li>
                    <li class="nav-item"><a class="nav-link" href="login.html">Login</a></li>
                </ul>
            </div>
        </div>
    </nav>
    
    <header id="home" class="hero">
        <div class="hero-content">
            <h1>Welcome to Paris</h1>
            <p>Discover the magic of the City of Light</p>
        </div>
    </header>
 
    <section id="attractions" class="py-5">
        <div class="container">
            <h2 class="text-center mb-5">Popular Attractions</h2>
            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <div class="card-img-container">
                            <img src="eiffel-tower-at-sunset.webp" class="card-img-top" alt="Eiffel Tower">
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Eiffel Tower</h5>
                            <p class="card-text">The iconic symbol of Paris, standing 324 meters tall.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <div class="card-img-container">
                            <img src="louvre-museum.webp" class="card-img-top" alt="Louvre Museum">
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Louvre Museum</h5>
                            <p class="card-text">Home to thousands of works of art, including the Mona Lisa.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <div class="card-img-container">
                            <img src="notre-dame-paris.webp" class="card-img-top" alt="Notre-Dame">
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Notre-Dame Cathedral</h5>
                            <p class="card-text">A masterpiece of French Gothic architecture.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="video-section py-5 bg-light">
        <div class="container">
            <h2 class="text-center mb-5">Experience Paris</h2>
            <div class="ratio ratio-16x9">
                <iframe src="Paris Vacation Travel Guide _ Expedia.mp4" title="Paris Tour" allowfullscreen></iframe>
            </div>
        </div>
    </section>
    
    <section id="gallery" class="py-5">
        <div class="container">
            <h2 class="text-center mb-5">Gallery</h2>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="gallery-img-container">
                        <img src="Paris-Street.jpg" class="img-fluid rounded" alt="Paris Street">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="gallery-img-container">
                        <img src="paris-cafe.webp" class="img-fluid rounded" alt="Paris Cafe">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="gallery-img-container">
                        <img src="Paris Architecture.jpg" class="img-fluid rounded" alt="Paris Architecture">
                    </div>
                </div>
            </div>
        </div>
    </section>

    
    <footer class="bg-dark text-white py-4">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h5>Contact Us</h5>
                    <p>Email: obrightersunhine@gmail.com</p>
                    <p>059 1297 752</p>
                </div>
                <div class="col-md-6">
                    <h5>Follow Us</h5>
                    <div class="social-links">
                        <a href="#" class="text-white me-3"><i class="fab fa-facebook"></i></a>
                        <a href="#" class="text-white me-3"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="text-white me-3"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Discover Paris</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="index.html">Discover Paris</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="map.html">Map</a></li>
                    <li class="nav-item"><a class="nav-link" href="feedback.html">Feedback</a></li>
                    <li class="nav-item"><a class="nav-link active" href="login.html">Login</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5 pt-5">
        
        <div class="form-container" id="loginContainer">
            <h2 class="text-center mb-4">Login</h2>
            <form id="loginForm">
                <div class="mb-3">
                    <label for="email" class="form-label">Email address</label>
                    <input type="email" class="form-control" id="email" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" id="password" required>
                </div>
                <div class="mb-3 form-check">
                    <input type="checkbox" class="form-check-input" id="rememberMe">
                    <label class="form-check-label" for="rememberMe">Remember me</label>
                </div>
                <button type="submit" class="btn btn-primary w-100">Login</button>
                <div class="text-center mt-3">
                    <a href="#" class="toggle-form text-decoration-none">Forgot password?</a>
                    <p class="mt-2">Don't have an account? <a href="#" class="toggle-form text-decoration-none">Sign up</a></p>
                </div>
            </form>
        </div>


        <div class="form-container" id="signupForm" style="display: none;">
            <h2 class="text-center mb-4">Create Account</h2>
            <form id="registerForm">
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="firstName" class="form-label">First Name</label>
                        <input type="text" class="form-control" id="firstName" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="lastName" class="form-label">Last Name</label>
                        <input type="text" class="form-control" id="lastName" required>
                    </div>
                </div>
                <div class="mb-3">
                    <label for="signupEmail" class="form-label">Email address</label>
                    <input type="email" class="form-control" id="signupEmail" required>
                </div>
                <div class="mb-3">
                    <label for="signupPassword" class="form-label">Password</label>
                    <input type="password" class="form-control" id="signupPassword" required>
                </div>
                <div class="mb-3">
                    <label for="confirmPassword" class="form-label">Confirm Password</label>
                    <input type="password" class="form-control" id="confirmPassword" required>
                </div>
                <div class="mb-3">
                    <label for="phoneNumber" class="form-label">Phone Number</label>
                    <input type="tel" class="form-control" id="phoneNumber" required>
                </div>
                <div class="mb-3">
                    <label for="dateOfBirth" class="form-label">Date of Birth</label>
                    <input type="date" class="form-control" id="dateOfBirth" required>
                </div>
                <div class="mb-3">
                    <label for="country" class="form-label">Country of Residence</label>
                    <select class="form-select" id="country" required>
                        <option value="">Select a country</option>
                        <option value="US">United States</option>
                        <option value="UK">United Kingdom</option>
                        <option value="FR">France</option>
                        <option value="DE">Germany</option>
                        <option value="GH">Ghana</option>
                        <option value="other">Other</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="language" class="form-label">Preferred Language</label>
                    <select class="form-select" id="language" required>
                        <option value="">Select a language</option>
                        <option value="en">English</option>
                        <option value="fr">French</option>
                        <option value="de">German</option>
                        <option value="es">Spanish</option>
                        <option value="tw">Twi</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="interests" class="form-label">Travel Interests (Select all that apply)</label>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="museums">
                        <label class="form-check-label" for="museums">Museums & Culture</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="food">
                        <label class="form-check-label" for="food">Food & Dining</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="history">
                        <label class="form-check-label" for="history">Historical Sites</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="shopping">
                        <label class="form-check-label" for="shopping">Shopping</label>
                    </div>
                </div>
                <div class="mb-3 form-check">
                    <input type="checkbox" class="form-check-input" id="newsletter" required>
                    <label class="form-check-label" for="newsletter">Subscribe to newsletter</label>
                </div>
                <div class="mb-3 form-check">
                    <input type="checkbox" class="form-check-input" id="terms" required>
                    <label class="form-check-label" for="terms">I agree to the Terms and Conditions</label>
                </div>
                <button type="submit" class="btn btn-primary w-100">Create Account</button>
                <div class="text-center mt-3">
                    <p>Already have an account? <a href="#" class="toggle-form text-decoration-none">Login</a></p>
                </div>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
ng index.html…]()





main.jdocument

.addEventListener('DOMContentLoaded', function() {
    
    const toggleForms = document.querySelectorAll('.toggle-form');
    const loginForm = document.getElementById('loginForm');
    const signupForm = document.getElementById('signupForm');

    if (toggleForms) {
        toggleForms.forEach(toggle => {
            toggle.addEventListener('click', function(e) {
                e.preventDefault();
               
                if (this.textContent === 'Forgot password?') {
                    alert('Please create a new account to reset your password.');
                }
                
                if (signupForm.style.display === 'none') {
                    loginForm.parentElement.style.display = 'none';
                    signupForm.style.display = 'block';
                } else {
                    loginForm.parentElement.style.display = 'block';
                    signupForm.style.display = 'none';
                }
            });
        });
    }

    
    if (loginForm) {
        loginForm.addEventListener('submit', function(e) {
            e.preventDefault();
            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;
            
            
            console.log('Login attempt:', { email, password });
            alert('Login functionality would be implemented here');
        });
    }

    
    const registerForm = document.getElementById('registerForm');
    if (registerForm) {
        registerForm.addEventListener('submit', function(e) {
            e.preventDefault();
            const formData = {
                firstName: document.getElementById('firstName').value,
                lastName: document.getElementById('lastName').value,
                email: document.getElementById('signupEmail').value,
                password: document.getElementById('signupPassword').value,
                confirmPassword: document.getElementById('confirmPassword').value,
                phoneNumber: document.getElementById('phoneNumber').value,
                dateOfBirth: document.getElementById('dateOfBirth').value,
                country: document.getElementById('country').value,
                language: document.getElementById('language').value,
                interests: {
                    museums: document.getElementById('museums').checked,
                    food: document.getElementById('food').checked,
                    history: document.getElementById('history').checked,
                    shopping: document.getElementById('shopping').checked
                },
                newsletter: document.getElementById('newsletter').checked
            };

            
            if (formData.password !== formData.confirmPassword) {
                alert('Passwords do not match!');
                return;
            }

            console.log('Registration data:', formData);
            alert('Thank you for registering!');
            registerForm.reset();
            
            loginForm.parentElement.style.display = 'block';
            signupForm.style.display = 'none';
        });
    }

    
    const feedbackForm = document.getElementById('feedbackForm');
    if (feedbackForm) {
        feedbackForm.addEventListener('submit', function(e) {
            e.preventDefault();
            const formData = {
                name: document.getElementById('name').value,
                email: document.getElementById('email').value,
                rating: document.getElementById('rating').value,
                comment: document.getElementById('comment').value,
                visitDate: document.getElementById('visitDate').value
            };
            
            console.log('Feedback submitted:', formData);
            alert('Thank you for your feedback!');
            feedbackForm.reset();
        });
    }

    
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href'));
            if (target) {
                target.scrollIntoView({
                    behavior: 'smooth'
                });
            }
        });
    });
});
()



style.css…
()body {
    padding-top: 56px;
    min-height: 100vh;
    background: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%);
    color: #fff;
}

.form-container {
    max-width: 600px;
    margin: 0 auto;
    padding: 2rem;
    background: rgba(255, 255, 255, 0.9);
    box-shadow: 0 0 25px rgba(0,0,0,0.2);
    border-radius: 12px;
    transition: all 0.3s ease;
    color: #333;
    backdrop-filter: blur(10px);
}


.hero {
    height: 100vh;
    background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url('paris-background.jpg');
    background-size: cover;
    background-position: center;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    color: white;
}

.hero-content h1 {
    font-size: 4rem;
    margin-bottom: 1rem;
    text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
}

.hero-content p {
    font-size: 1.5rem;
    text-shadow: 1px 1px 2px rgba(0,0,0,0.5);
}


.card {
    transition: transform 0.3s;
    height: 100%;
    background: rgba(255, 255, 255, 0.95);
    box-shadow: 0 5px 15px rgba(0,0,0,0.2);
}

.card:hover {
    transform: translateY(-5px);
}


.card-img-container,
.gallery-img-container {
    position: relative;
    width: 100%;
    padding-top: 75%; 
    overflow: hidden;
}

.card-img-top,
.gallery img {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.5s;
}

.gallery .row {
    margin: -15px;
}

.gallery .col-md-4 {
    padding: 15px;
}

.gallery img:hover {
    transform: scale(1.1);
}

.card-img-top {
    border-top-left-radius: 8px;
    border-top-right-radius: 8px;
}

.gallery img {
    border-radius: 8px;
}



.social-links a {
    font-size: 1.5rem;
    transition: color 0.3s;
    color: #fff;
}

.social-links a:hover {
    color: #ffd700 !important;
}


#map {
    height: 400px;
    width: 100%;
    margin: 2rem 0;
    border-radius: 12px;
    box-shadow: 0 5px 15px rgba(0,0,0,0.2);
}


.toggle-form {
    cursor: pointer;
    color: #2a5298;
}

.toggle-form:hover {
    text-decoration: underline !important;
    color: #1e3c72;
}


.video-section .ratio {
    max-width: 1000px;
    margin: 0 auto;
    box-shadow: 0 5px 15px rgba(0,0,0,0.2);
    border-radius: 12px;
    overflow: hidden;
}

.navbar {
    background: linear-gradient(90deg, #1e3c72 0%, #2a5298 100%) !important;
    box-shadow: 0 2px 10px rgba(0,0,0,0.1);
}

.form-control, .form-select {
    background-color: rgba(255, 255, 255, 0.9);
    border: 1px solid rgba(0,0,0,0.1);
}

.form-control:focus, .form-select:focus {
    background-color: #fff;
    box-shadow: 0 0 0 0.2rem rgba(42, 82, 152, 0.25);
}

.btn-primary {
    background: linear-gradient(90deg, #1e3c72 0%, #2a5298 100%);
    border: none;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
}

.btn-primary:hover {
    background: linear-gradient(90deg, #2a5298 0%, #1e3c72 100%);
    transform: translateY(-1px);
    box-shadow: 0 4px 8px rgba(0,0,0,0.2);
}



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Map - Discover Paris</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="index.html">Discover Paris</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
                    <li class="nav-item"><a class="nav-link active" href="map.html">Map</a></li>
                    <li class="nav-item"><a class="nav-link" href="feedback.html">Feedback</a></li>
                    <li class="nav-item"><a class="nav-link" href="login.html">Login</a></li>
                </ul>
            </div>
        </div>
    </nav>

    
    <div class="container py-5">
        <h2 class="text-center mb-4">Explore Paris</h2>
        <div id="map"></div>
        <div class="row mt-4">
            <div class="col-md-4">
                <h4>Popular Attractions</h4>
                <ul class="list-group">
                    <li class="list-group-item">Eiffel Tower</li>
                    <li class="list-group-item">Louvre Museum</li>
                    <li class="list-group-item">Notre-Dame Cathedral</li>
                    <li class="list-group-item">Arc de Triomphe</li>
                    <li class="list-group-item">Sacré-Cœur</li>
                </ul>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/main.js"></script>
    <script>
        function initMap() {
            const paris = { lat: 48.8566, lng: 2.3522 };
            const map = new google.maps.Map(document.getElementById("map"), {
                zoom: 13,
                center: paris,
            });

            
            const attractions = [
                { position: { lat: 48.8584, lng: 2.2945 }, title: "Eiffel Tower" },
                { position: { lat: 48.8606, lng: 2.3376 }, title: "Louvre Museum" },
                { position: { lat: 48.8530, lng: 2.3499 }, title: "Notre-Dame Cathedral" },
                { position: { lat: 48.8738, lng: 2.2950 }, title: "Arc de Triomphe" },
                { position: { lat: 48.8867, lng: 2.3431 }, title: "Sacré-Cœur" }
            ];

            attractions.forEach(attraction => {
                new google.maps.Marker({
                    position: attraction.position,
                    map: map,
                    title: attraction.title
                });
            });
        }
    </script>
 
    <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap">
    </script>
</body>
</html>
oading map.html…]()

