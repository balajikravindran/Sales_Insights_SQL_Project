-- Filter orders with amount > 5000
SELECT * FROM orders WHERE amount > 5000;

-- Orders in January 2024
SELECT order_id, customer_id, order_date, amount
FROM orders
WHERE order_date > '2024-01-01' AND order_date < '2024-01-31';
