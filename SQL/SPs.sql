
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



/* Stored Procedures */

-- Stored Procedure: GetAllCustomers
DELIMITER $$ -- Change the delimiter to $$ to avoid conflicts with the semicolon


CREATE PROCEDURE GetAllCustomers()
BEGIN
    SELECT * FROM customers;
END$$
-- Call the stored procedure
CALL GetAllCustomers();


CREATE PROCEDURE InsertCustomer(
    IN p_first_name VARCHAR(255),
    IN p_last_name VARCHAR(255),
    IN p_email VARCHAR(255)
)
BEGIN
    INSERT INTO customers (first_name, last_name, email, created_at, updated_at)
    VALUES (p_first_name, p_last_name, p_email);
END$$
CALL InsertCustomer('John', 'Doe', 'john.doe@example.com');


CREATE PROCEDURE GetOrderTotal(
    IN p_order_id INT,
    OUT p_total_price DECIMAL(10, 2)
)
BEGIN
    SELECT total_price INTO p_total_price
    FROM orders
    WHERE id = p_order_id;
END$$
-- Declare a variable to store the output
SET @total_price = 0;
CALL GetOrderTotal(1, @total_price);
SELECT @total_price;


DELIMITER ; -- Reset the delimiter to semicolon