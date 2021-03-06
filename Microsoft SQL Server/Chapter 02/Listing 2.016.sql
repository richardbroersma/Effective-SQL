-- Ensure you've run SalesOrdersStructure.sql
-- and SalesOrdersData.sql in the Sample Databases folder
-- in order to run this example. 

USE SalesOrdersSample;
GO

-- Listing 2.16 Sample query SQL with WHERE clause
SELECT CustomerID, Sum(OrderTotal)
FROM Orders
WHERE OrderDate > '2015-12-01'
GROUP BY CustomerID;