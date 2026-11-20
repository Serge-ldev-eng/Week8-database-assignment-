-- MySQL dump for database: sales
-- Generated with: mysqldump -u root -p sales > sales_backup.sql

CREATE DATABASE IF NOT EXISTS sales;
USE sales;

CREATE TABLE IF NOT EXISTS customers (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  email VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS orders (
  id INT PRIMARY KEY AUTO_INCREMENT,
  customer_id INT,
  amount DECIMAL(10,2),
  order_date DATE
);

INSERT INTO customers (name, email) VALUES ('John Doe', 'john@example.com');
INSERT INTO orders (customer_id, amount, order_date) VALUES (1, 250.00, '2026-11-01');
