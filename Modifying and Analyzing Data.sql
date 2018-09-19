/* Working with Text String
Concatenation: */
SELECT 
CompanyName
,ContactName
,CompanyName || '('|| ContactName ||')'


-- Trimming Strings（移除掉一个字串种的字头或字尾）
SELECT TRIM('   Sample   ');
结果:
'Sample'

SELECT LTRIM('   Sample   ');
结果:
'Sample   '

SELECT RTRIM('   Sample   ');
结果:
'   Sample'


 -- Substring - Returns the specified number of characters from a particular postition of a given string.
Substr(string name, string position, number of characters to be returned)

Example:
SELECT Substr('Alexander',2,3)
结果：
'lex'



-- Upper Case
SELECT Upper(column_name) FROM Table_name
or
SELECT UCASE(column_name) FROM Table_name
-- Lower Case
SELECT LOWER(column_name) FROM Table_name


-- Working with Date and Time Strings
Use STRFRIME function: Compute current date and use it to compare to a recorded date in your data
Code:
	SELECT Birthdate
	,STRFRIME('%Y', Birthday) AS year
	,STRFRIME('%m', Birthday) AS year
	,STRFRIME('%d', Birthday) AS year
	From Employees

Use Now function: Combine several date and time functions together to manipulate data
Compute Current Date:
	SELECT Date('now')
DATE(('now')- Birthday) AS Age



-- Case Statement
SELECT 
employeeid
,firstname
,lastname
,city
,CASE city
	WHEN 'Calgary' THEN 'Calgary'
ELSE 'Other'
	END
FROM Employees
ORDER BY LastName, FirstName;

-- 第一种用法
-- case sex
--   when '1' then '男'
--   when '2' then '女’
--   else '其他' END

-- 第二种用法
-- case when sex = '1' then '男'
--      when sex = '2' then '女'
--      else '其他' end  


-- Views(创建视表)
视图包含行和列，就像一个真实的表。视图中的字段就是来自一个或多个数据库中的真实的表中的字段。
我们可以向视图添加 SQL 函数、WHERE 以及 JOIN 语句，我们也可以提交数据，就像这些来自于某个单一的表。
注释：数据库的设计和结构不会受到视图中的函数、where 或 join 语句的影响。

Create View my_view
AS
SELECT
r.regoin
,t.territory
,e.reportsto
FROM Region r
INNER JOIN Territories t on r.region = t.region

SELECT*FROM my_view (可以看你的view)
Drop View my_view (删除你创建的view)


/* Using SQL for Data Science, part 1 */
Data Understanding(Most important step)
	1. Understanding relationships in your data
	2. NULL value
	3. String values
	4. Date and times


Business Understanding
	1. Ask questions about business problem you are solving
	2. Hard to separate data and business understanding

