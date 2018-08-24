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



/* Case Statement