-- Create Products Table with Primary Key and Check Constraint
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(5,2) CHECK (price > 0),
    stock INT,
    is_deleted BOOLEAN DEFAULT TRUE
);

-- Create Order_Items Table with Composite Primary Key and Default
CREATE TABLE order_items (
    order_id INT,
    product_id INT,
    quantity INT,
    status VARCHAR(20) DEFAULT 'Pending',
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE
);

-- Insert sample product
INSERT INTO products (product_id, product_name, price, stock)
VALUES (103, 'Wireless Mouse', 19.99, 25);

-- Soft delete simulation
UPDATE products
SET is_deleted = TRUE
WHERE product_id = 102;

-- Select queries
SELECT * FROM products;
SELECT * FROM order_items;
