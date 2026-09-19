

create database [SQL Questions]

use [SQL Questions]

-- Create the Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Country VARCHAR(50)
);

-- Insert data into Customers table
INSERT INTO Customers (CustomerID, CustomerName, Country)
VALUES 
(1, 'Alice', 'USA'),
(2, 'Bob', 'UK'),
(3, 'Charlie', 'Canada'),
(4, 'David', 'USA'),
(5, 'Eve', 'Australia');

-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    ProductID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert data into Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, ProductID)
VALUES 
(101, 1, '2024-08-01', 1001),
(102, 1, '2024-08-03', 1002),
(103, 2, '2024-08-04', 1001),
(104, 3, '2024-08-05', 1003),
(105, 5, '2024-08-06', 1004);

-- Create the Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10, 2)
);

-- Insert data into Products table
INSERT INTO Products (ProductID, ProductName, Price)
VALUES 
(1001, 'Laptop', 1000),
(1002, 'Smartphone', 700),
(1003, 'Tablet', 500),
(1004, 'Headphones', 200),
(1005, 'Smartwatch', 300);



select * from Customers

select * from Orders

select * from Products


--1) Write an SQL query to find the names of customers who have placed an order.
SELECT DISTINCT CustomerName FROM Customers [C] INNER JOIN Orders [o] on C.CustomerID = O.CustomerID

--2) Find the list of customers who have not placed any orders.
SELECT DISTINCT CustomerName FROM Customers [C] LEFT JOIN Orders [O]
on C.CustomerID = O.CustomerID WHERE O.OrderID is NULL


--3) List all orders along with the product name and price.
SELECT DISTINCT ProductName, Price FROM Orders o INNER JOIN Products p on o.ProductID = p.ProductID

--4) Find the names of customers and their orders, including customers who haven't placed any orders.
SELECT DISTINCT CustomerName, OrderID FROM Customers c LEFT JOIN Orders o on o.CustomerID = c.CustomerID

--5) Retrieve a list of products that have never been ordered.
SELECT p.ProductID, ProductName FROM Products p left JOIN Orders o ON p.ProductID = o.OrderID where OrderDate is NULL

--6) Find the total number of orders placed by each customer.
SELECT CustomerName, COUNT(orderid)[no of orders] FROM Customers c inner join orders o on c.CustomerID = o.CustomerID
GROUP BY customername
--OR 
SELECT CustomerName, COUNT(orderid)[no of orders] FROM Customers c left join orders o on c.CustomerID = o.CustomerID
GROUP BY customername

--7) Display the customers, the products they've ordered, and the order date. Include customers who haven't placed any orders.
SELECT DISTINCT CustomerName, p.ProductID, ProductName, OrderDate 
FROM Customers c left join orders o on c.CustomerID = o.CustomerID left join Products p on o.ProductID = p.ProductID

--8) Identify pairs of customers who live in the same country
SELECT c.CustomerName, d.CustomerName
FROM Customers c JOIN Customers d on c.Country = d.Country and c.CustomerID<>d.CustomerID and c.CustomerID>d.CustomerID

--9) Find the customer who has spent the most on their orders
SELECT * FROM

--10) Find customers who have ordered more than one type of products


--11) List all products and their corresponding orders, using a RIGHT JOIN, including products that have never been ordered.


--12) Retrieve all orders placed by customers from the USA.


--13) Find the names of customers who have ordered a product priced above $500.


--14) Find customers who have ordered the same product more than once.