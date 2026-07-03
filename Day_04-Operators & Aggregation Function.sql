/*
SMALL PROJECT

Create a database named Flipkart_db and then create a table with the following fields:

Product ID – Serial
Name – String
SKU Code – 8-digit String
Price – Number (Maximum: 99999999)
Stock Quantity – Number (must be greater than 0)
Is Available – Boolean (Default: TRUE)
Category – String (NOT NULL)
Added On – Date
Last Update – Date
*/

--Creating Table
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    sku_code CHAR(8) UNIQUE NOT NULL,
    price NUMERIC(10,2) CHECK (price > 0),
    stock_quantity INT DEFAULT 0 CHECK (stock_quantity >= 0),
    is_available BOOLEAN DEFAULT TRUE,
    category TEXT NOT NULL,
    added_on DATE DEFAULT CURRENT_DATE,
    last_updated TIMESTAMP DEFAULT NOW()
);

--Inserting the data into the table
INSERT INTO products (name, sku_code, price, stock_quantity, is_available, category)
VALUES
('Wireless Mouse', 'WM123456', 699.99, 50, TRUE, 'Electronics'),
('Bluetooth Speaker', 'BS234567', 1499.00, 30, TRUE, 'Electronics'),
('Laptop Stand', 'LS345678', 799.50, 20, TRUE, 'Accessories'),
('USB-C Hub', 'UC456789', 1299.99, 15, TRUE, 'Accessories'),
('Notebook', 'NB567890', 99.99, 100, TRUE, 'Stationery'),
('Pen Set', 'PS678901', 199.00, 200, TRUE, 'Stationery'),
('Coffee Mug', 'CM789012', 299.00, 75, TRUE, 'Home & Kitchen'),
('LED Desk Lamp', 'DL890123', 899.00, 40, TRUE, 'Home & Kitchen'),
('Yoga Mat', 'YM901234', 499.00, 25, TRUE, 'Fitness'),
('Water Bottle', 'WB012345', 349.00, 60, TRUE, 'Fitness');

--CLAUSES WITH OPERATORS
--1. COMPARISON (=,!=,<,>,<=,>=)
SELECT * FROM PRODUCTS WHERE CATEGORY = 'Electronics';
SELECT * FROM PRODUCTS WHERE CATEGORY != 'Electronics';
SELECT * FROM PRODUCTS WHERE PRICE < 2000;
SELECT * FROM PRODUCTS WHERE PRICE > 2000;

--2. RANGE (BETWEEN)
SELECT * FROM PRODUCTS WHERE PRICE Between 400 and 2000;

--3. SET (IN)
SELECT * FROM PRODUCTS WHERE CATEGORY IN ('Electronics','Accessories','Fitness');

--4. PATTERN (LIKE)
SELECT * FROM PRODUCTS WHERE SKU_CODE LIKE 'W%';
SELECT * FROM PRODUCTS WHERE SKU_CODE LIKE '%234';
SELECT * FROM PRODUCTS WHERE SKU_CODE LIKE '__9%';
SELECT * FROM PRODUCTS WHERE SKU_CODE LIKE '_S%';

--5. LOGICAL (AND,OR,NOT)
SELECT * FROM  PRODUCTS WHERE CATEGORY = 'Electronics' or CATEGORY = 'Accessories' or CATEGORY = 'Fitness';
SELECT * FROM PRODUCTS WHERE CATEGORY = 'Electronics';
SELECT * FROM PRODUCTS WHERE NOT CATEGORY = 'Electronics';

--AGGREGATION FUNCTIONS--
--Aggregation function are used to summarize data. 
---COUNT() - COUNT NUMBER OF ROWS,
---SUM() - ADD NUMERIC VALUES,
---AVG() - CALCULATE AVERAGE,
---MIN() - FIND SMALLEST VALUE,
---MAX() - FIND HIGHEST VALUE ;

--EXAMPLES OF ALL AGGREGATION FUNCTIONS
SELECT COUNT(PRODUCT_ID) FROM PRODUCTS; --COUNT() EXAMPLE
SELECT SUM(PRICE) FROM PRODUCTS; --SUM() EXAMPLE
SELECT SUM(PRICE) FROM PRODUCTS WHERE CATEGORY='Electronics'; --SUM EXAMPLE
SELECT AVG(PRICE) FROM PRODUCTS; --AVG() EXAMPLE
SELECT ROUND(AVG(PRICE),2) FROM PRODUCTS; --AVG() EXAMPLE WITH ROUND FUNCTION
SELECT MIN(PRICE) FROM PRODUCTS; --MIN() EXAMPLE
SELECT MAX(PRICE) FROM PRODUCTS; --MAX() EXAMPLE






