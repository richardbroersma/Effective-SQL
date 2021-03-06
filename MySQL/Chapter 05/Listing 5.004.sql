-- Ensure you've run Item30StructureAndData.sql in the Sample Databases folder
-- in order to create the Inventory table

USE Item30Example;

-- Listing 5.4 ROLLUP sample query
SELECT Color, Size, SUM(Quantity) AS TotalQuantity
FROM Inventory 
GROUP BY Color, Size WITH ROLLUP;
