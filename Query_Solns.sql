1.	Retrieve all employees whose salary is greater than 60000.

SELECT Name
FROM Employees
WHERE Salary>60000;

2.	Calculate the total sales amount for each customer from the sales table.

SELECT Customer_id, SUM(Amount)
FROM Sales
GROUP BY Customer_id;


3.	Retrieve the names and salaries of all employees working in the Finance department.

SELECT e.name, e.salary
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_name = 'Finance';

4.	Find the total sales amount made on 2023-03-17 from the sales table.

SELECT SUM(Amount) AS total_sales
FROM sales
WHERE sale_date = '2023-03-17';

5.	Get the names of customers who have placed an order of more than 600 from the orders table.

SELECT customer_name
FROM orders
WHERE order_amount > 600;
