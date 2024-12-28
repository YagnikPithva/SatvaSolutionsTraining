
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



INSERT INTO customers (first_name, last_name, email) VALUES
('John', 'Doe', 'johndoe@gmail.com'),
('Jane', 'Doe', 'janedoe@gmail.com'),
('Alice', 'Smith', 'alicesmith@gmail.com'),
('Bob', 'Johnson', 'bob@gmail.com'),
('Mary', 'Brown', 'mary@gmail.com'),
('David', 'White', 'david@gmail.com'),
('Linda', 'Miller', 'linda@gmail.com'),
('William', 'Davis', 'william@gmail.com'),
('Patricia', 'Martinez', 'patricia@gmail.com'),
('Richard', 'Hernandez', 'richard@gmail.com');

INSERT INTO products (name, price) VALUES
('Product 1', 100.00),
('Product 2', 200.00),
('Product 3', 300.00),
('Product 4', 400.00),
('Product 5', 500.00),
('Product 6', 600.00),
('Product 7', 700.00),
('Product 8', 800.00),
('Product 9', 900.00),
('Product 10', 1000.00);

INSERT INTO orders (customer_id, product_id, quantity, total_price) VALUES
(1, 1, 2, 200.00),
(2, 2, 1, 200.00),
(3, 3, 3, 900.00),
(4, 4, 4, 1600.00),
(5, 5, 5, 2500.00),
(6, 6, 6, 3600.00),
(7, 7, 7, 4900.00),
(8, 8, 8, 6400.00),
(9, 9, 9, 8100.00),
(10, 10, 10, 10000.00);