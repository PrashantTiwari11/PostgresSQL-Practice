/* 
Numeric Data Types 
1.SMALLINT (2 BYTE INTEGER)
2. INTEGER/INT (4 BYTE INTEGER)
3. BIGINT (8 BYTE INTEGER)
4. DECIMAL (P ,S ) P-PRECISION , S-SCALE
5. REAL (4-BYTE FLOATING POINT)
6. DOUBLE PRECISION (8-BYTE FLOATING POINT)
7. SERIAL (AUTO INCREMENT INTEGER)
*/

Create table numbers(
IDs serial,
age smallint,
price numeric(4,2),
rating real
);

insert into numbers (age,price,rating)
values (40,40.02,1223345),
(50,50.02,7489246),
(80,72.95,8933214);

Select * from numbers ;

/* 
Character / String Data Types
1. CHAR (n) - Fixed length string (pads with space)
2. VARCHAR(n) - Variable length string (limit n chars)
3. TEXT - unlimited-lenght string
*/

create table strings(
code char(5),
email varchar(100),
bio text
);

insert into strings 
values('123p1','pt1234@gmail.com','hello my name is Prashant tiwari .'),
('456R2','riya25@gmail.com','hello my name is riya and i am learning PostgresSQL.');

Select * from strings;

/* Boolean Types
BOOLEAN TRUE , FALSE , NULL is_active BOOLEAN
*/

/* 
Date & Time Data Types 
1. DATE - ONLY DATE(YYYY-MM-DD)
2. TIME - ONLY TIME(HH:MM:SS)
3. TIMESTAMP - DATE + TIME
4. TIMESTAMPZ - WITH TIMEZONE (GMT+5:30)
5. INTERVAL - TIME DIFFERENCE 
*/

/* CONSTRAINTS
1. PRIMARY KEY - UNIQULEY IDENTIFIES EACH ROW
2. NOT NULL - COLUMN MUST HAVE A VALUE
3. UNIQUE - NO DUPLICATE VALUES ALLOWED
4. DEFAULT - PROVIDES DEFAULT VALUE IF NONE (TIMESTAMP , DEAFULT NOW())
5. CHECK - VALIDATES VALUES
6. FOREIGN KEY - LINKS ONE TABLE TO ANOTHER
*/

create table random (
ID serial Primary Key , 
name varchar(100) Not Null , 
email text Unique not null,
created_at date default now(),
age int check(age >=18)
);

insert into random(name , age , email )
values ('Prashant' , 19 , 'pt123@gmail.com');

Select * from random;