-- Countries with sales presence
SELECT count(DISTINCT Country) AS Total_Countries
FROM Sales

-- Countries with the highest and lowest customer registration
SELECT Country, count(*) AS Total_Customers
FROM Sales
GROUP BY Country
ORDER BY Total_Customers DESC;

SELECT Country, count(*) AS Total_Customers
FROM Sales
GROUP BY Country
ORDER BY Total_Customers ASC

-- Number of product categories
SELECT count(DISTINCT CategoryName) AS Total_Category
FROM Sales

--Average sales (Q) and their amounts ($) by category
SELECT CategoryName, round(avg(Quantity)) AS Avg_Quantity,
	   round(avg(TotalSales)) AS Avg_TotalSales 
FROM Sales 
GROUP BY CategoryName

--Regular customers (+1 purchase)
SELECT (count(DISTINCT Regular_Customers) * 100 / count(DISTINCT Total_Customers)) 
AS Percent_Regular_Customers
FROM (
	SELECT CustomerID AS Regular_Customers
	FROM Sales
	GROUP BY CustomerID
	HAVING count(*) > 1) t1,
	(SELECT CustomerID AS Total_Customers
	FROM Sales
	GROUP BY CustomerID) t2
