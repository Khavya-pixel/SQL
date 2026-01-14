-- 1. Retrieve Employees in Finance Department

SELECT e.name, e.salary
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_name = 'Finance';


2. Calculate Total Sales for Each Customer
-- Incorrect Code
SELECT customer_id, SUM(amount) AS total_sales
FROM sales
GROUP BY customer_id;

-- 3. Find Products Priced Over the Average Price
-- Incorrect Code
SELECT product_name, price
FROM products
WHERE price >(
    SELECT AVG(price)
    FROM products);

-- 4. Get Customers Who Have Placed Orders Over 1000
-- Incorrect Code
SELECT DISTINCT customer_name
FROM orders
WHERE order_amount > 1000;

-- 5. Find Total Sales for Each Customer
-- Incorrect Code
SELECT customer_id, SUM(amount) 
FROM sales
GROUP BY customer_id;  
