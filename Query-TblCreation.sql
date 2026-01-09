CREATE DATABASE Query_set1;
USE Query_set1;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT,
    salary INT,
    department_id INT
);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2),
    sale_date DATE
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    price INT
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    order_date DATE,
    order_amount INT
);

SHOW TABLES;
DESC employees;
DESC departments;
DESC sales;
DESC products;
DESC orders;

INSERT INTO employees (employee_id, name, age, salary, department_id) VALUES
(1, 'John', 30, 60000, 101),
(2, 'Emily', 25, 48000, 102),
(3, 'Michael', 40, 75000, 103),
(4, 'Sara', 35, 56000, 101),
(5, 'David', 28, 49000, 102),
(6, 'Robert', 45, 90000, 103),
(7, 'Sophia', 29, 51000, 102);

INSERT INTO departments (department_id, department_name) VALUES
(101, 'HR'),
(102, 'Finance'),
(103, 'IT');

INSERT INTO sales (sale_id, customer_id, amount, sale_date) VALUES
(1, 101, 4500.00, '2023-03-15'),
(2, 102, 5500.00, '2023-03-16'),
(3, 103, 7000.00, '2023-03-17'),
(4, 104, 3000.00, '2023-03-18'),
(5, 105, 6000.00, '2023-03-19');


INSERT INTO products (product_id, product_name, price) VALUES
(1, 'Laptop', 1000),
(2, 'Mobile', 500),
(3, 'Tablet', 300),
(4, 'Headphones', 100),
(5, 'Smartwatch', 200);


INSERT INTO orders (order_id, customer_name, order_date, order_amount) VALUES
(1, 'John', '2023-05-01', 500),
(2, 'Emily', '2023-05-02', 700),
(3, 'Michael', '2023-05-03', 1200),
(4, 'Sara', '2023-05-04', 450),
(5, 'David', '2023-05-05', 900),
(6, 'John', '2023-05-06', 600),
(7, 'Emily', '2023-05-07', 750);


SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM sales;
SELECT * FROM products;
SELECT * FROM orders;

