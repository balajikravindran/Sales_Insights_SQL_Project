
-- Create customers table
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(100),
  city VARCHAR(100)
);

-- Insert data into customers
INSERT INTO customers (customer_id, customer_name, city)
VALUES
  (101, 'Arjun Kumar', 'Chennai'),
  (102, 'Meera Raj', 'Coimbatore'),
  (103, 'Bala Dinesh', 'Madurai');

-- Create orders table
CREATE TABLE orders (
  order_id INT,
  customer_id INT,
  order_date DATE,
  amount INT,
  payment_method VARCHAR(100)
);

-- Add primary key
ALTER TABLE orders
ADD PRIMARY KEY (order_id);

-- Insert data into orders
INSERT INTO orders (order_id, customer_id, order_date, amount, payment_method)
VALUES
  (201, 101, '2024-06-15', 8500, 'UPI'),
  (202, 102, '2024-06-20', 4000, 'Card'),
  (203, 103, '2024-07-01', 6500, 'NetBanking'),
  (204, 101, '2024-07-05', 7200, 'Cash'),
  (205, 102, '2024-07-10', 9100, 'UPI');

-- Select orders after July 1, 2024 sorted by amount
SELECT * FROM orders
WHERE order_date > '2024-07-01'
ORDER BY amount DESC;

-- Update a specific order's payment method
UPDATE orders
SET payment_method = 'Card'
WHERE customer_id = 102 AND order_id = 205;

-- Delete a specific order
DELETE FROM orders
WHERE order_id = 203;

-- Get top 2 highest value orders
SELECT order_id, amount, customer_id
FROM orders
ORDER BY amount DESC
LIMIT 2;
