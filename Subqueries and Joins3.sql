/* Using Subqueries
What are Subqueries(Can be used for Subqueries to Filter):
	1. Queries embedded into other queries
	2. Relational databases store data in multiple tables
	3. Subqueries merge data from multiple sources together 
	4. Helps with adding other filtering criteria
*/
Select 
CustomerID
,CompanyName
,Region
FROM Customers
WHERE customerID in (Select
CustomerID
		From Orders
		WHere Freight > 100);
-- Always perform the innermost SELECT portion first


/*  There is no limit to the number of subqueries you can have
	Performance slows when you nest too deeply 
	Subquery select can oly retrieve a single column

	Subqueries are powerful tools
	Not alwasy the best option due to performance 
*/


Joining Tables:
/* Benefits of Breaking data into tables
		- Efficient storage (less duplicated data)
		- Easier Manipulation 
		- Greater scalability
		- Logically models a process
		- Tables are related through common values(keys)
Join allows data retrieval from multiple tables in one query
*/


Cartesian(Cross)笛卡尔积 Joins
-- Cross Joins: each row from the first table joins with all the rows of another table 
SELECT product_name
, unit_price
,company_name
FROM suppliers CROSS JOIN products
-- Cross Joins: not frequiently used; Computationally taxing; will return profducts with the incorrect vendor or no vendor at all



Inner Joins
-- The INNER JOIN keyword selets records that have matching values in both tables
SELECT supplier.CompanyName
,product_name
,unit_price
FROM Supplier Inner Join Products
on SUpplier.supplierid = Products.supplierid

-- Inner join with multiple tables
SELECT o.OrderID, c.CompanyName, e.LastName
From ((Orders o inner join customers c on o.customerID = c.customerID)
Inner Join Employees e on o.EmpliyessID = e.EmployeeID)



Aliases and Self Joins
-- code
SELECT vendor_name
,product_name
,product_price
FROM Vendors as v, Products as p
Where v.vendor_id = p.vendor_id

-- Self Join Example
两张表a和b，
SELECT * FROM a INNER JOIN b ON a.id = b.id
和
SELECT * FROM a,b WHERE a.id = b.id
区别其实没差，加上筛选条件后,使用前者是先将表与表先关联查询,在结果中使用条件筛选,
使用后者是先通过筛选条件筛选后再进行关联;


Left,Right,Full Outer JOIN
/* Left Join: Return all records form the left table, and the matched records from the right table
				The result will be NULL if there is no matched data from right table
				（会出现一对多的情况）
	Left Join: Return all records form the right table, and the matched records from the left table
				The result will be NULL if there is no matched data from left table
	Full Outer Join: Return all records when there is a match in either left or right table records
*/



Unions
/* The UNION operator is uesd to combine the result-set of two or more SELECT statements
	Each SELECT statement within UNION mush have the same number of columns
	Columns must have the same order
*/
SELECt City, Country From Customers
WHERE Country = 'Germany'
Union 
SELECT City, Country FROM Suppliers
WHERE Country = 'Germany'
Order BY City

/*
UNION
The UNION command is used to select related information from two tables, much like the JOIN command. However, when using the UNION command all selected columns need to be of the same data type. With UNION, only distinct values are selected.

UNION ALL
The UNION ALL command is equal to the UNION command, except that UNION ALL selects all values.

The difference between Union and Union all is that Union all will not eliminate duplicate rows, instead it just pulls all rows from all tables fitting your query specifics and combines them into a table.
*/