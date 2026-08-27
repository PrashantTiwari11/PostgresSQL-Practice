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
