/*
Basics of Filtering with SQL
	- Why Filter
		1. Reduce the number of Records you retrieve
		2. Increase query performance
		3. Be Specific about the data you want to retrieve

Where Clause*/
Select column_name
from Table_name
where column_name operate value;

-- Sequence: First select then from, then where


/* Use IN and OR operators to filter your data and get results you want
Benefits of IN:
	1.long list of options
	2.IN execute faster than OR
	3.Don't have to think about the order with IN
	4.Cam contain another SELECT
OR with AND: SQL process AND before OR,最好使用括号()
*/



/* Using Wildcards in SQL
What are Wildcards? - Special character used to mach parts of value (LIKE)
					- Can only be used with strings, cannot be used for non-text datatypes
Using % Wildcards - '%Pizza': Grab anything end with the word Pizza 以pizza结尾
					- 'Pizza%' Grab anything after the word Pizza 以pizza打头
					- '%Pizza%' Grab anything before and after the word pizza 以pizza再中间
					- 'S%E' Grabs anything that start with 'S' and ends with "E" (Like Sadie)
					- 't%@gmail.com' Grabs gamil addresses that start with 't'
!!!! %Wildcard will not match NULLS, NULL represents no value in a column

Downsides of Wildcards:
	- Take longer to run
	- Better to use another operator
	- Statements with wildcards will take longer to run if used at the end of search patterns
	- Placement of wildcards is important
*/




/* Sorting with ORDER BY
Rules of ORDER BY
	- Takes the name of one or more columns 
	- Add a comma after each additional column name
	- Can sort by a column not retrieved
	- Must alwasy be the last clause in a selet statement 
*/


/* Math Operation 遵循四则运算括号
	- Addition (+)
	- Substraction (-)
	- Multiplcation (*)
	- Division (/)
*/


/* Aggregate Functions
Use various aggregate functions: AVERAGE, COUNT, MIN, MAX, and SUM to summarize and analyze data.
*/
Count(*) - Counts all the rows in a table containing values or NULL values
Count(column) - Counts all the rows in a specific column ignoring NULL values

If DISTINCT is not specified, ALL is assumed(如果没写清楚distinct，数据库默认你需要全部信息）
Cannot use DISTINCT on Count(*)
No value to use with min and max function



/*Group Data with SQL 
Having Clause - filtering for groups
	- Where does not work for groups
	- Where filters on rows
	- Instead use HAVING clase to filter for group 