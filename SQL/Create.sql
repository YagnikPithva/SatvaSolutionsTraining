
-- Comments can be added using '--' or '/* */' in SQL

-- 1: Create the database
CREATE DATABASE IF NOT EXISTS `example_db`;

-- 2: Use the database
USE `example_db`;

-- 3: Create the table structure

CREATE TABLE IF NOT EXISTS `customers` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `first_name` VARCHAR(100) NOT NULL,
    `last_name` VARCHAR(100) NOT NULL,
    `email` VARCHAR(255) NOT NULL UNIQUE,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,      -- Automatically sets current timestamp on record creation
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Automatically updates on record modification
);

CREATE TABLE IF NOT EXISTS `products` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `product_name` VARCHAR(255) NOT NULL,
    `category` VARCHAR(255) NOT NULL,
    `price` DECIMAL(10, 2) NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS `orders` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `customer_id` INT NOT NULL REFERENCES customers(id),
    `product_id` INT NOT NULL,
    `quantity` INT NOT NULL,
    `total_price` DECIMAL(10, 2) NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Note: DEFAULT is used to set the default value for the column
-- Note: ON UPDATE is used to update the timestamp when the record is modified
