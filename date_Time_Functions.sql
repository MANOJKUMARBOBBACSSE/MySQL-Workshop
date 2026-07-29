create database date_Time_Functions;
use date_Time_Functions;

-- Topic: Date & Time Functions
-- Concept: SYSDATE() - Returns the current system date and time.
-- Concept: NOW() - Returns the current date and time.
-- Concept: LOCALTIME() - Returns the current local date and time.
-- Concept: CURRENT_DATE() - Returns the current date.
-- Concept: CURDATE() - Returns the current date.
-- Concept: CURRENT_TIME() - Returns the current time.
-- Concept: CURTIME() - Returns the current time.
-- Date: 29-07-2026
-- Day: Wednesday

select sysdate() as todaydate;
select now() as todaydate;
select localtime() as todaydate;
select current_date() as todaydate;
select current_time() as todaytime;
select curdate() as todaydate;
select curtime() as todaytime;




-- Create Table
CREATE TABLE date_Time_Functions
(
    passenger_id INT PRIMARY KEY,
    passenger_name VARCHAR(50) NOT NULL,
    ticket_number VARCHAR(10) UNIQUE NOT NULL,
    booking_date_time DATETIME NOT NULL,
    booking_status VARCHAR(20) NOT NULL
);

-- Insert Records
INSERT INTO date_Time_Functions
(passenger_id, passenger_name, ticket_number, booking_date_time, booking_status)
VALUES
(1, 'John Doe', 'T001', '2023-06-11 10:10:10', 'confirmed'),
(2, 'Jane Smith', 'T002', '2023-06-12 12:12:12', 'pending'),
(3, 'Alex Brown', 'T003', '2023-06-13 14:14:14', 'confirmed');

-- Display All Records
SELECT * FROM date_Time_Functions;

select passenger_name from date_Time_Functions where booking_date_time <= sysdate();


select passenger_name,date(booking_date_time) as "booking data",booking_status from date_Time_Functions where date(booking_date_time) = '2023-06-13';