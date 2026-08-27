CREATE DATABASE ecommerce_sales;

-- Step 2: Database Select Karo
USE ecommerce_sales;

1️⃣ Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    age INT
);

2️⃣ Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

3️⃣ Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

Step 4: Customers Data Insert Karo
INSERT INTO customers (customer_id, customer_name, city, age)
VALUES
(1, 'Rahul Sharma', 'Delhi', 25),
(2, 'Priya Patel', 'Mumbai', 30),
(3, 'Amit Kumar', 'Surat', 22),
(4, 'Neha Singh', 'Delhi', 28),
(5, 'Rohit Shah', 'Ahmedabad', 35),
(6, 'Sneha Verma', 'Mumbai', 27),
(7, 'Vikas Patel', 'Surat', 32),
(8, 'Anjali Gupta', 'Delhi', 24);

Step 5: Products Data Insert Karo
INSERT INTO products (product_id, product_name, category, price)
VALUES
(101, 'Laptop', 'Electronics', 55000),
(102, 'Wireless Mouse', 'Electronics', 1200),
(103, 'Keyboard', 'Electronics', 2500),
(104, 'Office Chair', 'Furniture', 7000),
(105, 'Study Table', 'Furniture', 9000),
(106, 'Smartphone', 'Electronics', 30000),
(107, 'Headphones', 'Electronics', 3500),
(108, 'Water Bottle', 'Home', 500);

Step 6: Orders Data Insert Karo
INSERT INTO orders (order_id, customer_id, product_id, quantity, order_date)
VALUES
(1, 1, 101, 1, '2026-01-05'),
(2, 2, 102, 2, '2026-01-08'),
(3, 3, 106, 1, '2026-01-12'),
(4, 4, 104, 1, '2026-01-15'),
(5, 5, 103, 3, '2026-02-02'),
(6, 1, 107, 2, '2026-02-10'),
(7, 6, 105, 1, '2026-02-15'),
(8, 7, 108, 5, '2026-03-01'),
(9, 8, 102, 1, '2026-03-05'),
(10, 3, 103, 2, '2026-03-10'),
(11, 2, 106, 1, '2026-04-02'),
(12, 5, 104, 1, '2026-04-12');
