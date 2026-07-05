-----ALTER----
/*USE CASES OF ALTER:
1. ADD NEW COLUMNS
2. REMOVE COLUMNS
3. RENAME COLUMNS
4. CHANGE DATA TYPES
5. SET OR REMOVE DEFAULT VALUES
6. ADD OR REMOVE CONSTRAINTS
7. RENAME THE TABLE */

create table students (
student_id serial primary key ,
name varchar(100) ,
age bigint 
);

insert into students (name,age)
values ('akarsh',23),
('anjali',22),
('prashant',21);

--ADD NEW COLUMN
alter table students add column email varchar(100);
alter table students add column email varchar(100) default 'not provided';

--REMOVE A COLUMN
alter table students drop column email;

--RENAME A COLUMN
alter table students rename column name to first_name;

--CHANGE DATA TYPE OF COLUMN
alter table students alter column age type smallint;

--SET A DEFAULT VALUE
alter table students alter column age set default 18;

--REMOVE A DEFAULT VALUE
alter table students alter column age drop default;

--ADD A CONSTRAINTS
alter table students add constraint age_check check (age>=0);

--DROP A CONSTRAINTS
alter table students drop constraint age_check;

--RENAME TABLE NAME
alter table students rename to school_students;
select * from school_students;

select * from students;
