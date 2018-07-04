CREATE TABLE Persons(
id SERIAL PRIMARY KEY,
name TEXT,
age INTEGER,
height INTEGER,
city TEXT,
FavoriteColor
);


INSERT INTO Persons
(name,age,height,city,FavoriteColor)
VALUES
('joe',23,90.3,'utah','blue'),
('sue',23,40.8,'utah','red'),
('nick',23,69.8,'wy','black'),
('bill',23,10.8,'ca','white'),
('bob',23,68.8,'az','pink');

SELECT * FROM Persons 
ORDER BY height DESC;

SELECT * FROM Persons 
ORDER BY height ASC;

SELECT * FROM Persons 
ORDER BY age ASC;

SELECT * FROM Persons 
WHERE age < 20;

SELECT * FROM Persons 
WHERE age = 18;

SELECT * FROM Persons 
WHERE age < 20 OR age > 30;

SELECT * FROM Persons 
WHERE age 	!= 27;

SELECT * FROM Persons 
WHERE FavoriteColor != 'red';

SELECT * FROM Persons 
WHERE FavoriteColor != 'blue';

SELECT * FROM Persons 
WHERE FavoriteColor = 'orange' OR FavoriteColor = 'green';

SELECT * FROM Persons 
WHERE FavoriteColor IN('orange','green','blue');

SELECT * FROM Persons 
WHERE FavoriteColor IN('yellow','purple');

CREATE TABLE Orders(
Personid INTEGER,
ProductName TEXT,
ProductPrice DECIMAL,
Quantity INTEGER
);

INSERT INTO Orders
(Personid,ProductName,ProductPrice,Quantity);
VALUES
(1,'hat',39.77,42),
(2,'hat',45.56,40),
(3,'hat',350.95,7),
(4,'hat',56.80,6),
(5,'hat',34.70,1);

SELECT * FROM Orders;

SELECT SUM(Quantity) FROM Orders;

SELECT SUM(ProductPrice) FROM Orders;

SELECT SUM(ProductPrice * Quantity) FROM Orders WHERE Personid = 0;

INSERT INTO Artist (Name) values ('Big Blue');

INSERT INTO Artist (Name) values ('Big red');

INSERT INTO Artist (Name) values ('Big white');

SELECT * FROM Artist
ORDER BY Name
DESC LIMIT 10;

SELECT * FROM Artist
ORDER BY Name ASC LIMIT 5;

SELECT * FROM Artist
WHERE Name LIKE 'Black%';

SELECT * FROM Artist
WHERE Name LIKE '%Black%';

SELECT FirstName,LastName FROM Employee
WHERE City = 'Calgary' ;

SELECT FirstName,LastName,Max(birthdate) FROM Employee;

SELECT FirstName,LastName,Min(birthdate) FROM Employee;

SELECT * FROM Employee
WHERE ReportsTo = 2;

SELECT COUNT(*) FROM Employee
WHERE City = 'Lethbridge';

SELECT COUNT(*) FROM Invoice
WHERE BillingCountry = 'USA';

SELECT Max(total) FROM Invoice;

SELECT Min(total) FROM Invoice;

SELECT * FROM Invoice
WHERE Total > 5;

SELECT COUNT(*) FROM Invoice
WHERE Total > 5;

SELECT COUNT(*) FROM Invoice
WHERE BillingState IN('CA','TX','AZ');

SELECT AVG(Total) FROM Invoice;

SELECT SUM(Total) FROM Invoice;