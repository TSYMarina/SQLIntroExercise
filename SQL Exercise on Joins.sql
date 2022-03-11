-- Exercise on Joining Tables

/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
select p.Name, c.Name
from products p
Left Join categories c
on p.CategoryID = c.CategoryID
WHERE c.Name = "Computers";
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 Select p.Name, p.Price, r.Rating
 from products p
 Left Join reviews r
 on p.ProductID = r.ProductID
 WHERE r.Rating = 5;
  
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
Select e.EmployeeID, sum(s.Quantity)
from employees e
Inner Join sales s
on e.EmployeeID = s.EmployeeID
GROUP by e.EmployeeID Order by sum(s.Quantity) desc;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
Select d.Name, c.Name
from categories c
Left join departments d
on c.DepartmentID = d.DepartmentID
Where c.Name = "Games" or c.Name = "Appliances";

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
select s.ProductID as SalesPID, p.ProductID as PrPID, p.Name as ProductName, sum(s.Quantity) as QTYSold, sum(s.PricePerUnit * s.Quantity) as TotalRevenue
from sales s
left join products p
on p.ProductID = s.ProductID
Where p.Name = "Eagles: Hotel California";

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
Select p.Name, r.Reviewer, r.Rating, r. Comment
from reviews r
Inner Join products p
on r.ProductID = p.ProductID
Where p.Name = "Visio TV" and r.rating = 1;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */
select e.EmployeeID, e.FirstName, e. LastName, p.Name, p.ProductID, s.Quantity
from sales s
inner join employees e on e.EmployeeID = s.EmployeeID
left join products p on p.ProductID = s.ProductID
order by e.EmployeeID;