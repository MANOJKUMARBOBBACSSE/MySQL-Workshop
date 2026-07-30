create database employeesDB;
use employeesDB;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    designation VARCHAR(50),
    phone VARCHAR(20),
    mobile VARCHAR(20),
    office INT,
    emp_salary INT
);
INSERT INTO employees VALUES (1, 'Punith Kumar', 'Software Engineer', '011-1234567', '9876543210', 500100, 500000);
INSERT INTO employees VALUES (2, 'Kavya Singh', 'HR Manager', '011-2345678', '8765432109', 500200, 60000);
INSERT INTO employees VALUES (3, 'Priya Patel', 'Marketing Executive', '011-3456789', '7654321098', 500300, 0);
INSERT INTO employees VALUES (4, 'Ayush Sharma', 'Senior Developer', '011-4567890', '6543210987', 500100, 70000);
INSERT INTO employees VALUES (5, 'Avni Gupta', 'Finance Analyst', '011-5678901', '5432109876', 500400, 65000);
INSERT INTO employees VALUES (6, 'Ankit Verma', 'Intern', '011-6789012', '4321098765', 500100, 0);
INSERT INTO employees VALUES (7, 'Akash Kapoor', 'Manager', '011-7890123', NULL, 500500, 500000);
INSERT INTO employees VALUES (8, 'Rohit Sharma', 'Sales Executive', '011-8901234', '3210987654', 500600, 60000);
INSERT INTO employees VALUES (9, 'Amit Yadav', 'Research Analyst', NULL, '2109876543', 500600, 70000);

select * from employees;

select name, designation, 
		IF(emp_salary > 0, 'Paid', 'NotPaid') as state
from employees 
order by(emp_salary < 0) asc;

select name, designation,mobile, if(phone is not null,phone,'Not Available') 
from employees;

select name,nullif(emp_salary ,0) from employees;

select name,nullif(designation,'Intern') from employees;

select name,designation,ifnull(mobile,'No mobile') as state
from employees;

select name,ifnull(mobile,'Not Available') from employees;
select name,ifnull(emp_salary,'Not Available') from employees;

select emp_id,name,designation,coalesce(mobile,phone,office) from employees;
select if(5+5 = 10,'true','false') as result;

select name,designation,if(emp_salary > 0,'paid','unpaid') as status from employees;

select name,designation,if(emp_salary > 400000,'paid tax','unpaid tax') as status from employees;

select name,designation,if(office is not null,office,"not availaba") as officenumber from employees;
select name,designation,if(phone is not null,phone,"not availaba") as phonenumber from employees;


select name,designation,if(emp_salary = 0,'null','paid') as status from employees;

select name,nullif(emp_salary,0) from employees;

select name,designation,nullif(designation,'Intern') from employees;

select name,ifnull(mobile,'not have') from employees;

select name,designation,ifnull(emp_salary,'not available') from employees;

select name,designation,coalesce(phone,
    mobile ,
    office) from employees;
    
    
select name,designation,if(designation = 'Software Engineer','It',if(designation = 'HR Manager','It','Non_It')) from employees;


select name,designation,
case 
	when designation = "Software Engineer" then 'IT'
    when designation = "HR Manager" then 'HR'
    else 'Non-It'
    End as designation
from employees;

select name, ifnull(phone,"No phone") from employees;

select name, nullif(designation,"HR Manager") from employees;

