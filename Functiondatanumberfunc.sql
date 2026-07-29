create database Functiondatanumberfunc;
use Functiondatanumberfunc;
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    Product_name VARCHAR(50),
    Product_price DECIMAL(12, 5)
);

INSERT INTO products (product_id, Product_name, Product_price) VALUES
(1, 'Laptop', 999.93490),
(2, 'Smartphone', 499.54560),
(3, 'Headphones', 49.93490),
(4, 'Tablet', 299.03400),
(5, 'keyboard', 340.78900),
(6, 'Monitor', 14000.45000),
(7, 'Mouse', 499.89700);

select * from products;

-- Topic: Num Functions
-- Concept: MOD() - Returns the remainder after division.
-- Concept: ABS() - Returns the absolute (positive) value of a number.
-- Date: 28-07-2026
-- Day: Tuesday
select Product_name,product_id from products where mod(product_id,2) = 1;

select Product_name,Product_price from products where mod(Product_price,100) = 99.03400;

select mod(123,2) as mod_value;
select mod(0,0) as mod_value;

select Product_name,abs(Product_price) as absolute_value from products;

select Product_name from products where abs(Product_price) = -55.5;

-- Topic: Num Functions
-- Concept: ROUND() - Rounds a number to the nearest integer or specified decimal places.
-- Date: 29-07-2026
-- Day: Wednesday

select round(50.98) as value_round;

select round(99.898490,2) as value_round1;

select round(99.898490,-2) as value_round2;

select Product_name,round(Product_price,1)
 as Product_price_Base from products where Product_price > 500;
 
select Product_name,round(Product_price,-1)
as Product_price_Base from products;

-- Topic: Num Functions
-- Concept: TRUNCATE() - Truncates a number to the specified number of decimal places.
-- Date: 29-07-2026
-- Day: Wednesday

select Product_name,truncate(Product_price,-1) from products where truncate(Product_price,0) > 100;
select truncate(3090.6345,2) as product;

-- Topic: Num Functions
-- Concept: CEIL() - Returns the smallest integer greater than or equal to a number.
-- Concept: FLOOR() - Returns the largest integer less than or equal to a number.
-- Date: 29-07-2026
-- Day: Wednesday

select ceil(59.89) as value;

select ceil(59.1) as value;

select floor(89.9) as value;

select floor(999.9) as value;