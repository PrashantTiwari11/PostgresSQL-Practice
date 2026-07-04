/*
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

---STRING FUNCTION---
--1. UPPER() - CONVERT ALL TEXT INTO UPPERCASE
SELECT UPPER(NAME) FROM PRODUCTS;

--2. LOWER() - CONVERT ALL TEXT INTO LOWERCASE
SELECT LOWER(SKU_CODE) FROM PRODUCTS;

--3. LENGTH() - FIND THE LENGTH OF THE STRING
SELECT LENGTH(NAME) FROM PRODUCTS;

--SUBSTRING FUNCTION--
SELECT * FROM PRODUCTS;
SELECT NAME , SUBSTRING(SKU_CODE,1,2) FROM PRODUCTS;
SELECT NAME , LOWER(SUBSTRING(SKU_CODE,1,2)) AS SKU_CODE_LOWER FROM PRODUCTS;

 --LEFT() , RIGHT() FUNCTION
 SELECT NAME, LEFT(SKU_CODE,2) FROM PRODUCTS;
 SELECT NAME, RIGHT(SKU_CODE,3) FROM PRODUCTS;

 --CONCATE() - CONCATINATION IS USED TO ADD TWO OR MORE STRINGS.
 SELECT * FROM PRODUCTS; 
 SELECT CONCAT(NAME,' ',CATEGORY) FROM PRODUCTS;
 --CONCATE_WS() - CONCATINATION WITH SEPERATED
 SELECT CONCAT_WS(' ',NAME,CATEGORY,SKU_CODE) FROM PRODUCTS;

 --TRIM() & REPLACE() 
 --TRIM() IS USED TO REMOVE ALL SPACES
 --REPLACE() IS USED TO  REPLACE ANYTHING YOU WANT

 SELECT TRIM('   BROTHER   ' ); ---TRIM EXAMPLE
 SELECT NAME , REPLACE (SKU_CODE , LEFT(SKU_CODE,2),'GG') FROM PRODUCTS;
 