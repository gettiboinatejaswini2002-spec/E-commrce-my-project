use ecommercedb
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50)
)
INSERT INTO Customers VALUES
(1, 'Arun', 'Delhi'),
(2, 'Benarzee', 'Mumbai'),
(3, 'Charlie', 'Chennai');

CREATE TABLE item(
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product VARCHAR(50),
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
)
INSERT INTO item VALUES
(101, 1, 'Laptop', 60000),
(102, 2, 'Mobile', 20000),
(103, 1, 'Tablet', 25000),
(104, 3, 'Headphones', 5000);
-- View showing customer names and their orders
CREATE VIEW Customeritem AS
SELECT c.Name, c.City, i.Product, i.Amount
FROM Customers c
JOIN item i ON i.CustomerID = i.CustomerID;
SELECT * FROM Customeritem;
-- View to show total spending by each customer
CREATE VIEW CustomerSpending AS
SELECT c.Name, SUM(i.Amount) AS TotalSpent
FROM Customers c
JOIN item i ON c.CustomerID = i.CustomerID
GROUP BY c.Name
SELECT * FROM CustomerSpending
DROP VIEW IF EXISTS Customeritem
