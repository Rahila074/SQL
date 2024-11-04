USE SALES;

Create table SOLD(
    SaleID INT PRIMARY KEY,
    ProductID INT,
    SaleDate DATE,
    CustomerID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    TotalAmount DECIMAL(10, 2),
    Discount DECIMAL(10, 2),
    PaymentMethod VARCHAR(20),
    SalesRepID INT
);

INSERT INTO SOLD (SaleID, ProductID, SaleDate, CustomerID, Quantity, 
UnitPrice, TotalAmount, Discount, PaymentMethod, SalesRepID)
VALUES 
(1001, 1, '2024-01-12', 1, 2, 1200.00, 2400.00, 100.00, 'Credit Card', 501),
(1002, 2, '2024-01-15', 2, 1, 800.00, 800.00, 50.00, 'Cash', 502),
(1003, 3, '2024-02-20', 3, 3, 150.00, 450.00, 20.00, 'Debit Card', 503),
(1004, 5, '2024-03-10', 4, 1, 100.00, 100.00, 10.00, 'Credit Card', 504),
(1005, 6, '2024-03-25', 5, 4, 500.00, 2000.00, 150.00, 'Credit Card', 501),
(1006, 7, '2024-04-15', 1, 2, 75.00, 150.00, 0.00, 'Debit Card', 502),
(1007, 1, '2024-05-22', 6, 1, 1200.00, 1200.00, 100.00, 'Cash', 503),
(1008, 4, '2024-06-12', 3, 2, 400.00, 800.00, 50.00, 'Credit Card', 504),
(1009, 2, '2024-07-02', 2, 3, 800.00, 2400.00, 200.00, 'Cash', 501);

#1. Select all sales where the Discount is greater than 100.
SELECT * FROM SOLD where discount >100;
#2. Get all sales where the PaymentMethod is 'Cash' or 'Credit Card'.
SELECT * FROM Sold WHERE PaymentMethod IN ('Cash', 'Credit Card');

#3. Get all sales that do not have a discount.
SELECT * FROM Sales WHERE Discount IS NULL OR Discount = 0;

#4. Select all sales where the SaleDate is not null.
SELECT * FROM Sales WHERE SaleDate IS NOT NULL;

#5. Get sales with a TotalAmount greater than the average TotalAmount of all sales.
SELECT * FROM Sales WHERE TotalAmount > (SELECT AVG(TotalAmount) FROM Sales);


