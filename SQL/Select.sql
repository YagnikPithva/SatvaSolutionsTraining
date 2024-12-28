
-- TABLE SCHEMAS
-- customers
+----+------------+-----------+---------------------+---------------------+---------------------+
| id | first_name | last_name | email               | created_at          | updated_at          |
+----+------------+-----------+---------------------+---------------------+---------------------+

-- products
+----+------------+-----------+---------------------+---------------------+---------------------+
| id | product_name | category  | price               | created_at          | updated_at          |
+----+------------+-----------+---------------------+---------------------+---------------------+

-- orders
+----+------------+-----------+---------------------+---------------------+---------------------+-----------------------+
| id | customer_id | product_id | quantity            | total_price         | created_at          | updated_at          |
+----+------------+-----------+---------------------+---------------------+---------------------+-----------------------+


-- SELECT statements to retrieve data from the tables
SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT first_name, last_name, FROM customers;
SELECT product_name, price FROM products;
SELECT quantity, total_price FROM orders;

-- Filtering with WHERE clause
SELECT * FROM customers WHERE city = 'New York';
SELECT * FROM products WHERE price > 1000;
SELECT * FROM orders WHERE total_price BETWEEN 1000 AND 5000;

-- Using different operators
SELECT * FROM customers WHERE first_name LIKE 'J%';
SELECT * FROM products WHERE price IN (900, 1600, 2500);
SELECT * FROM orders WHERE total_price IS NOT NULL;

-- Aggregation functions
SELECT AVG(price) AS average_price FROM products;
SELECT COUNT(*) AS total_orders FROM orders;
SELECT SUM(total_price) AS total_revenue FROM orders;

-- Group By clause
SELECT city, COUNT(*) AS customer_count
FROM customers GROUP BY city;

SELECT product_id, SUM(total_price) AS total_revenue
FROM orders GROUP BY product_id;

-- Having clause
SELECT product_id, SUM(total_price) AS total_revenue
FROM orders GROUP BY product_id
HAVING SUM(total_price) > 5000;

-- Subqueries
SELECT first_name, last_name FROM customers
WHERE customer_id IN (SELECT customer_id FROM orders WHERE total_price > 5000);

-- EXISTS clause
SELECT first_name, last_name FROM customers
WHERE EXISTS (SELECT 1 FROM orders WHERE customers.customer_id = orders.customer_id AND total_price > 5000);


-- Join operations
-- Inner Join
SELECT customers.first_name, customers.last_name, orders.total_price
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id;

-- Left Join
SELECT customers.first_name, customers.last_name, orders.total_price
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id;

-- Right Join
SELECT customers.first_name, customers.last_name, orders.total_price
FROM customers
RIGHT JOIN orders ON customers.customer_id = orders.customer_id;

-- Self join -example to get employee and manager names
SELECT e1.first_name, e1.last_name, 
e2.first_name AS manager_first_name, e2.last_name AS manager_last_name
FROM employees e1
LEFT JOIN employees e2 ON e1.manager_id = e2.employee_id;