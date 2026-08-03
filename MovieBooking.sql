-- Create Database
CREATE DATABASE MovieBooking;
USE MovieBooking;

-- Create Table
CREATE TABLE ticketbooking (
    booking_id INT PRIMARY KEY,
    movie_name VARCHAR(100),
    show_date DATE,
    customer_name VARCHAR(100),
    num_tickets INT,
    ticket_price DECIMAL(5,2)
);

-- Insert Data
INSERT INTO ticketbooking
(booking_id, movie_name, show_date, customer_name, num_tickets, ticket_price)
VALUES
(1, 'Prerana', '2023-01-15', 'Rajesh Kumar', 3, 10.00),
(2, 'Bhoomi Geetha', '2023-01-15', 'Priya Sundaram', 2, 12.50),
(3, 'Akasha Bhairava', '2023-01-16', 'Karthik Raghavan', 4, 9.75),
(4, 'Jenina Hole', '2023-01-16', 'Ananya Menon', 2, 11.00),
(5, 'Bandhana', '2023-01-17', 'Suresh Babu', 5, 8.50);

select * from ticketbooking;

select movie_name from ticketbooking where ticket_price = (select max(ticket_price) from ticketbooking);

select customer_name,movie_name,show_date from ticketbooking where show_date = (select show_date from ticketbooking where movie_name = "Bhoomi Geetha");
-- select show_date from ticketbooking where movie_name = "Bhoomi Geetha";
select movie_name,num_tickets from ticketbooking  where num_tickets > (
select avg(num_tickets) from ticketbooking );


CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255),
    email VARCHAR(255)
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(8,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO customers (customer_id, customer_name, email) VALUES
(101, 'John Doe', 'john.doe@example.com'),
(102, 'Jane Smith', 'jane.smith@example.com'),
(103, 'Bob Johnson', 'bob.johnson@example.com'),
(104, 'Alice Williams', 'alice.williams@example.com'),
(105, 'Akash Pande', 'akash@kodnest.com'),
(106, 'Ankit Singhal', 'ankits@example.com');
INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES
(1, 101, '2023-01-15', 50.00),
(2, 102, '2023-01-16', 75.50),
(3, 103, '2023-01-17', 120.00),
(4, 101, '2023-01-18', 30.25),
(5, 104, '2023-01-19', 90.75),
(6, 106, '2023-01-19', 50.00);

SELECT * FROM customers;
SELECT * FROM orders;