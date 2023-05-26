--DDL Table Creation
CREATE TABLE Sales AS
SELECT Customers.CustomerID, Customers.City, Cities.Country,Orders.OrderDate, OrderDetails.Quantity, Products.Price,
	   OrderDetails.Quantity*Products.Price AS TotalSales, Products.ProductName, Categories.CategoryName
FROM Orders
JOIN Customers ON Customers.CustomerID=Orders.CustomerID
JOIN Cities ON Cities.City=Customers.City
JOIN OrderDetails ON OrderDetails.OrderID=Orders.OrderID
JOIN Products ON Products.ProductID=OrderDetails.ProductID
JOIN Categories ON Products.CategoryID=Categories.CategoryID


--DML Price increase for countries with less sales
UPDATE Sales
SET Price=Price*1.2
WHERE Country IN (
	SELECT Country
	FROM Sales
	GROUP BY Country
	HAVING count(*)<2;
	
	
--DML Add new sales
INSERT INTO Sales (CustomerID, City, Country,OrderDate, Quantity, Price, TotalSales, ProductName, CategoryName)
VALUES
	
	('123', 'New York', 'Estados Unidos', '2022-05-15', 5, 10.99, 54.95, 'Queso cabrales', 'Dairy products'),
	('456', 'Paris', 'Francia', '2022-05-16', 3, 8.50, 25.50, 'Tofu', 'Produce'),
	('789', 'London', 'Inglaterra', '2022-05-17', 2, 12.75, 25.50, 'Geitost', 'Dairy products')
