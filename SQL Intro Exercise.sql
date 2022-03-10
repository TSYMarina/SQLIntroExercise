-- SQL Introduction Exercise
  -- Using the bestbuy database:
 -- Copy the following and paste into MySql Workbench

-- find all products 
Select * From Products;
 
-- find all products that cost $1400
SELECT Name, Price, ProductID 
From Products 
Where Price = 1400;
 
-- find all products that cost $11.99 or $13.99
 SELECT Name, Price, ProductID
From Products 
Where Price = 11.99 and 13.99;

-- find all products that do NOT cost 11.99 - using NOT
  SELECT Name, Price, ProductID 
  From Products 
  Where NOT Price = 11.99;

-- find  all products and sort them by price from greatest to least
 SELECT Name, Price, ProductID 
 From Products 
 Order By Price DESC;
 
-- find all employees who don't have a middle initial
 SELECT FirstName, MiddleInitial, LastName 
 from employees 
 Where MiddleInitial IS null;
 
-- find distinct product prices
 SELECT DISTINCT Price From Products;
 
-- find all employees whose first name starts with the letter ‘j’
 SELECT FirstName, LastName
 FROM employees 
 WHERE FirstName LIKE 'j%';
 
-- find all Macbooks 
 Select *
 From products 
 Where Name = "Macbook";
 
-- find all products that are on sale
 Select *
 From products 
 where OnSale = 1;
 
-- find the average price of all products 
select AVG(Price)
from products;
 
-- find all Geek Squad employees who don't have a middle initial 
Select *
from employees
Where Title = "Geek Squad" and MiddleInitial IS null;
 
-- find all products from the products table whose stock level is in the range  -- of 500 to 1200. Order by Price from least to greatest. **Use the between keyword** 
Select *
from products
Where StockLevel BETWEEN 500 and 1200 Order By Price;