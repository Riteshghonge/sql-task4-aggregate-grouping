-- Create the database
CREATE DATABASE StudentDB;
USE StudentDB;

-- Create a Students table
CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    course VARCHAR(50) DEFAULT 'Undeclared',
    enrollment_date DATE
);

-- Create a Courses table
CREATE TABLE Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    department VARCHAR(100)
);

-- Table: Payments
CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    amount DECIMAL(8,2),
    payment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);
INSERT INTO Payments (student_id, amount, payment_date) VALUES
(1, 5000.00, '2025-06-01'),
(2, 4500.00, '2025-06-05'),
(1, 3000.00, '2025-07-01'),
(4, 5000.00, '2025-07-02'),
(2, 2500.00, '2025-07-15');

-- Aggregate Query Examples
-- 1. Total payments by each student

SELECT student_id, SUM(amount) AS total_paid
FROM Payments
GROUP BY student_id;

-- 2. Average payment amount
SELECT AVG(amount) AS avg_payment FROM Payments;

-- 3. Total number of payments
SELECT COUNT(*) AS total_transactions FROM Payments;

-- 4. Count of payments per student
SELECT student_id, COUNT(payment_id) AS payment_count
FROM Payments
GROUP BY student_id;

-- 5. Highest payment per student
SELECT student_id, MAX(amount) AS max_payment
FROM Payments
GROUP BY student_id;

-- 6. Total paid > 7000 (use HAVING)
SELECT student_id, SUM(amount) AS total_paid
FROM Payments
GROUP BY student_id
HAVING SUM(amount) > 7000;

-- 7. Round average to 2 decimal places

SELECT ROUND(AVG(amount), 2) AS rounded_avg_payment
FROM Payments;

-- 8. Count distinct students who made payments

SELECT COUNT(DISTINCT student_id) AS unique_payers
FROM Payments;


