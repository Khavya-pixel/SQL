-- Question 1:
--  Find the names and salaries of employees who earn more than the average salary in the company.
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) as salary FROM employees);

-- Question 2:
--  Retrieve a list of customer names who have not placed any orders.
SELECT c.customer_name
FROM customers c
LEFT JOIN orders o
ON c.customer_name=o.customer_name
WHERE o.order_id IS NULL;

-- Question 3:
--  Display the total sales amount for each product.
SELECT p.product_name, SUM(s.amount) AS total_sales
FROM products p
JOIN sales s
ON p.product_id = s.product_id
GROUP BY p.product_name;

-- Question 4:
--  List each department name with the number of employees working in it
SELECT d.department_name, COUNT(e.employee_id) AS employee_count
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_name;

-- Question 5:
--  Find the top 3 highest sales transactions.
SELECT *
FROM sales
ORDER BY amount DESC
LIMIT 3;

-- Question 6
-- Display each employee’s name, department name, salary, and their salary rank within their department.
SELECT 
    e.name,
    d.department_name,
    e.salary,
    RANK() OVER (
        PARTITION BY e.department_id
        ORDER BY e.salary DESC
    ) AS salary_rank
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;

