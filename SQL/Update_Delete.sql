
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


-- Updating records
UPDATE customers SET city = 'Los Angeles' WHERE customer_id = 3;
UPDATE products SET price = price * 1.1 WHERE product_id = 4;


-- Update multiple columns
UPDATE orders SET quantity = 5, total_price = 500.00 WHERE order_id = 1;


-- Deleting records
DELETE FROM customers WHERE city = 'New York';
DELETE FROM orders WHERE order_id = 10;


-- Delete all records
DELETE FROM orders; -- Slower Execution , Can be rolled back
-- OR
TRUNCATE TABLE orders; -- Faster Execution , Cannot be rolled back


-- DROP TABLE
DROP TABLE orders; -- Delete the table and its data

