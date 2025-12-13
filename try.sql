
-- try work on the five section 


-- Q1:STUDENT REGISTRATION SYSTEM
-- A university wants to manage students and courses.

-- Tasks
-- Create tables for students, courses, and enrollments.
-- Insert sample data.
-- Display students enrolled in “Database Systems”.
-- Count courses per student.
-- Delete a student who withdrew.

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    age INT CHECK (age >= 16)
);
 
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name TEXT UNIQUE NOT NULL
);

CREATE TABLE enrollments (
    enroll_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(student_id),
    course_id INT REFERENCES courses(course_id)
);


SELECT s.name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id
WHERE c.course_name = 'Database Systems';

SELECT student_id, COUNT(*) AS total_courses
FROM enrollments
GROUP BY student_id;

DELETE FROM students WHERE student_id = 3;


-- Q2:HOSPITAL MANAGEMENT SYSTEM
-- A hospital stores patient and appointment records.

-- Tasks
-- Create tables.
-- Show all appointments with patient names.
-- Find doctors without appointments.
-- Update appointment status.
-- Delete old appointments.
CREATE TABLE patients (
    patient_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE doctors (
    doctor_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE appointments (
    appointment_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES patients(patient_id),
    doctor_id INT REFERENCES doctors(doctor_id),
    status TEXT DEFAULT 'Scheduled'
);

SELECT p.name AS patient, d.name AS doctor, a.status
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
JOIN doctors d ON a.doctor_id = d.doctor_id;


SELECT d.name
FROM doctors d
LEFT JOIN appointments a ON d.doctor_id = a.doctor_id
WHERE a.doctor_id IS NULL;

UPDATE appointments
SET status = 'Completed'
WHERE appointment_id = 1;


DELETE FROM appointments
WHERE appointment_id = 5;


-- Q3:INVENTORY MANAGEMENT SYSTEM
-- A shop tracks products and stock.

-- Tasks
-- Create products table.
-- Find products priced between 100 and 500.
-- Increase prices by 10%.
-- Show low-stock products.
-- Remove discontinued products.


CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    price NUMERIC CHECK (price > 0),
    quantity INT DEFAULT 0
);


SELECT * FROM products
WHERE price BETWEEN 100 AND 500;


UPDATE products
SET price = price * 1.10;


SELECT * FROM products
WHERE quantity < 10;


DELETE FROM products WHERE quantity = 0;



-- Q4:BANKING SYSTEM
-- A bank stores transactions.

-- Tasks
-- Calculate balance per account.
-- Show transactions above GHS 5,000.
-- Sort transactions by date.
-- Delete failed transactions.

SELECT account_id,
SUM(CASE WHEN type='Deposit' THEN amount ELSE -amount END) AS balance
FROM transactions
GROUP BY account_id;


SELECT * FROM transactions
WHERE amount > 5000;

SELECT * FROM transactions
ORDER BY transaction_date DESC;

DELETE FROM transactions
WHERE status = 'Failed';


-- Q5: LIBRARY MANAGEMENT SYSTEM
-- A library manages book borrowing.

-- Tasks
-- Show borrowed books with member names.
-- Find overdue books.
-- Count books borrowed per member.
-- Update return status.


SELECT m.name, b.title
FROM borrowed_books bb
JOIN members m ON bb.member_id = m.member_id
JOIN books b ON bb.book_id = b.book_id;



SELECT * FROM borrowed_books
WHERE due_date < CURRENT_DATE;

SELECT member_id, COUNT(*) AS total_borrowed
FROM borrowed_books
GROUP BY member_id;

UPDATE borrowed_books
SET returned = TRUE
WHERE borrow_id = 1;



-- Q6: RESTAURANT ORDER SYSTEM
-- A restaurant records orders.

-- Tasks
-- Calculate total bill per order.
-- Show today’s orders.
-- Find most ordered item.
-- Delete cancelled orders.


SELECT o.order_id, SUM(d.qty * m.price) AS total
FROM orders o
JOIN order_details d ON o.order_id = d.order_id
JOIN menu m ON d.menu_id = m.menu_id
GROUP BY o.order_id;

SELECT * FROM orders
WHERE order_date = CURRENT_DATE;

SELECT menu_id, SUM(quantity) AS total_ordered
FROM order_details
GROUP BY menu_id
ORDER BY total_ordered DESC
LIMIT 1;

DELETE FROM orders
WHERE status = 'Cancelled';


-- Q7:EMPLOYEE MANAGEMENT SYSTEM 
-- A company manages employees.

-- Tasks
-- List employees per department.
-- Find average salary.
-- Increase salary by 15%.
-- Find employees without department.


SELECT department, name
FROM employees
ORDER BY department;


SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;


UPDATE employees 
SET salary = salary * 1.15;



SELECT * FROM employees
WHERE department IS NULL;


-- Q8: E-COMMERCE SYSTEM
-- An online store tracks customers and orders.

-- Tasks
-- Find customers with no orders.
-- Show orders in last 7 days.
-- Count orders per customer.



SELECT c.name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;


SELECT * FROM orders
WHERE order_date >= CURRENT_DATE - INTERVAL '7 days';


SELECT customer_id, COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id;


-- Q9: UNIVERSITY RESULT SYSTEM
-- A university processes results.

-- Tasks
-- Calculate GPA.
-- Find students who failed.
-- List top student.

SELECT student_id,
SUM(score * credit) / SUM(credit) AS gpa
FROM results
GROUP BY student_id;


SELECT student_id
FROM results
WHERE score < 50;


SELECT student_id,
SUM(score * credit) / SUM(credit) AS gpa
FROM results
GROUP BY student_id
ORDER BY gpa DESC
LIMIT 1;



-- Q10: MOVIE STREAMING PLATFORM
-- Question
-- A streaming platform tracks viewing history.

-- Tasks
-- Find most watched movie.
-- Show users who never watched.
-- Count views per movie.
-- Limit top 5 movies.

SELECT movie_id, COUNT(*) AS views
FROM watch_history
GROUP BY movie_id
ORDER BY views DESC
LIMIT 1;


SELECT u.name
FROM users u
LEFT JOIN watch_history w ON u.user_id = w.user_id
WHERE w.user_id IS NULL;


SELECT movie_id, COUNT(*) AS views
FROM watch_history
GROUP BY movie_id;

SELECT movie_id, COUNT(*) AS views
FROM watch_history
GROUP BY movie_id
ORDER BY views DESC
LIMIT 5;















































