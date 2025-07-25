-- 🟢 Basic Filter Query
SELECT * FROM orders WHERE amount > 5000;

-- 🟢 Date Range Filter
SELECT order_id, customer_id, order_date, amount
FROM orders
WHERE order_date > '2024-01-01' AND order_date < '2024-01-31';

-- 🟢 INSERT
INSERT INTO orders(order_id, customer_id, order_date, amount)
VALUES ('O203', 'C103', '2024-07-24', 9500);

-- 🟢 UPDATE
UPDATE orders 
SET amount = 9750
WHERE order_id = 'O203';

-- 🟢 DELETE
DELETE FROM orders
WHERE order_id = 'O203';
