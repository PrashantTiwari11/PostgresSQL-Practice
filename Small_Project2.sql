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
