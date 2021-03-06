-- Ensure you've run SalesOrdersStructure.sql
-- and SalesOrdersData.sql in the Sample Databases folder
-- in order to run this example. 

SET search_path = SalesOrdersSample;

-- A constraint already exists between Customers and
-- Orders but has a different name. This will create a
-- duplicate constraint.
ALTER TABLE Orders ADD 
    CONSTRAINT Orders_FK97 FOREIGN KEY 
    (
        CustomerID
    ) REFERENCES Customers (
        CustomerID
    );

