-- Insert a new order
INSERT INTO orders(order_id, customer_id, order_date, amount)
VALUES ('O203', 'C103', '2024-07-24', 9500);

-- Update the amount
UPDATE orders 
SET amount = 9750
WHERE order_id = 'O203';

-- Delete the cancelled order
DELETE FROM orders
WHERE order_id = 'O203';
