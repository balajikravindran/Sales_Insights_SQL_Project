
-- Sort orders by amount in descending order
SELECT * FROM orders
ORDER BY amount DESC;

-- Add a new column to the orders table
ALTER TABLE orders
ADD payment_method VARCHAR(20);

-- Create a new table with orders before 2024
CREATE TABLE archived_orders AS
SELECT * FROM orders
WHERE order_date < '2024-01-01';

-- Create customers table with a primary key
CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

-- Add a primary key to the orders table (proper syntax)
ALTER TABLE orders
ADD CONSTRAINT pk_order_id PRIMARY KEY (order_id);
