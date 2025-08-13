CREATE DATABASE Market1

USE Market1

CREATE TABLE Products
(
ID INT PRIMARY KEY IDENTITY,
NAME VARCHAR(30),
PRICE INT
)

ALTER TABLE Products
ADD BRAND VARCHAR(30)

INSERT INTO Products
VALUES ('Qelem', 1, 'Faber-Castell'),
       ('Pozan', 1, 'Staedtler'),
       ('Sud', 2, 'Milla'),
       ('Telefon', 800, 'Samsung'),
	   ('Utu', 89, 'LG'),
       ('Sokolad', 3, 'Alpen Gold'),
       ('Sabun', 4, 'Duru'),
       ('Qatıq', 3, 'Milla'), 
       ('Ayaqqabi', 130, 'Nike'),
	   ('Sac Boyasi', 12, 'Scwarzkopf'),
       ('Fotoaparat', 1200, 'Canon')


SELECT * FROM Products

UPDATE Products
SET PRICE=899 WHERE NAME='Telefon'

UPDATE Products
SET BRAND='Palsud' WHERE ID=3


DELETE FROM Products
WHERE NAME='Pozan'

DELETE FROM Products
WHERE ID=8

SELECT * FROM Products WHERE PRICE <= (SELECT AVG(Price) FROM Products)

SELECT * FROM Products WHERE PRICE>10


SELECT NAME + '-' + BRAND AS ProductInfo FROM Products WHERE LEN(BRAND)>5

SELECT * FROM Products




CREATE TABLE Employee (
    Id INT PRIMARY KEY IDENTITY(1,1),         
    Fullname NVARCHAR(255) NOT NULL,             
    Age INT NOT NULL CHECK (Age >= 0),  
    Email NVARCHAR(255) NOT NULL UNIQUE,    
    Salary DECIMAL(10,2) NOT NULL CHECK (Salary BETWEEN 300 AND 2000)
)


INSERT INTO Employee
VALUES ('Ali Mammadov', 28, 'ali.mammadov@example.com', 1200.50),
	   ('Aysel Huseynova', 34, 'aysel.huseynova@example.com', 1500.00),
	   ('Leyla Rzayeva', 40, 'leyla.rzayeva@example.com', 2000.00)

SELECT * FROM Employee