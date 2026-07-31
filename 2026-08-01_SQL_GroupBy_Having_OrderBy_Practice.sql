CREATE DATABASE company_db;

USE company_db;

CREATE TABLE employee(
    Emp_id INT PRIMARY KEY,
    Emp_name VARCHAR(30),
    Designation VARCHAR(30),
    Salary INT,
    Dep_id INT
);

INSERT INTO employee VALUES
(101,'Rahul','Developer',50000,1),
(102,'Priya','Developer',55000,1),
(103,'Kiran','Developer',60000,1),
(104,'Amit','Tester',40000,2),
(105,'Sneha','Tester',45000,2),
(106,'Ravi','Tester',47000,2),
(107,'John','Manager',80000,3),
(108,'Anu','Manager',85000,3),
(109,'Vijay','HR',35000,4),
(110,'Keerthi','HR',38000,4),
(111,'Manoj','Developer',65000,1),
(112,'Ajay','Manager',90000,3);

-- Display the number of employees in each department 
select Dep_id,Designation,count(Designation) as number_of_employees FROM employee group by Dep_id,Designation;

-- Display the maximum salary in each department
select Dep_id, max(Salary) as "maximum salary" from employee group by Dep_id;

--  Display the average salary in each department.
select Dep_id, avg(Salary) as average_salary from employee group by Dep_id;

-- Display the total salary paid in each department.
select Dep_id, sum(Salary) as total_salary from employee group by Dep_id;

-- Display the departments whose maximum salary is greater than 70000.
select Dep_id, max(Salary) as maximum_salary from employee group by Dep_id having maximum_salary > 70000;

-- Display the departments whose average salary is greater than 50000.
select Dep_id, avg(Salary) as average_salary from employee group by Dep_id having average_salary > 50000;

-- Display the departments having more than 2 employees.
select Dep_id,count(Dep_id) from employee group by Dep_id having count(Dep_id) > 2;

-- Display the designations whose total salary is greater than 150000.
select Designation,sum(Salary) from employee group by Designation having sum(Salary) > 150000;

-- Display all employees ordered by salary in ascending order.

select * from employee order by Salary asc;

-- Display all employees ordered by salary in descending order.
select * from employee order by Salary desc;

-- Display all employees ordered by employee name in alphabetical order (A to Z).
select * from employee order by Emp_name asc;

-- Display each department with its maximum salary, and sort the result by maximum salary in descending order.
select Dep_id,max(Salary) as maximum_salary from employee group by Dep_id order by maximum_salary desc;

-- Display each designation with its average salary, ordered from highest average salary to lowest.
select Designation,avg(Salary) as average_salary from employee group by Designation order by average_salary desc;

-- Display the departments whose average salary is greater than 50000, and sort them by average salary in descending order.
select Dep_id,avg(Salary) as average_salary from employee group by Dep_id having average_salary > 50000 order by average_salary desc;

-- Display the designations having more than 2 employees, ordered by employee count in descending order.
select Designation,count(Designation) from employee 
group by Designation 
having count(Designation) > 2 
order by count(Designation) desc;

-- Display each department's total salary, ordered by total salary from highest to lowest.
select Dep_id, sum(Salary) as total_salary from employee 
group by Dep_id 
order by total_salary desc;

-- Display the departments whose minimum salary is greater than 40000
select Dep_id, min(Salary) as minimum_salary from employee 
group by Dep_id 
having minimum_salary > 40000;

-- Display the designations whose maximum salary is greater than 60000, ordered by maximum salary in descending order.
select Designation,max(Salary) from employee 
group by Designation 
having max(Salary) > 60000
order by max(Salary) desc limit 1;

-- Display the department having the highest total salary.

select Dep_id, sum(Salary) as total_salary from employee 
group by Dep_id order by total_salary limit 1;