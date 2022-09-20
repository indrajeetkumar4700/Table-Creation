Sp_tables

Select top 10 * from HumanResources.Employee

-- Where
Order By NationalIDNumber desc, JobTitle asc
-- Having

Select
--MaritalStatus,
Sum(SickLeaveHours) as TotalSickHours
from HumanResources.Employee

Select
MaritalStatus,
Sum(SickLeaveHours) as TotalSickHours
from HumanResources.Employee
Group By MaritalStatus

Select
Employee.Gender,
MaritalStatus,
Sum(SickLeaveHours) as TotalSickHours
from HumanResources.Employee
Group By MaritalStatus, Employee.Gender

Select
Employee.Gender,
MaritalStatus,
Avg(SickLeaveHours) as TotalSickHours
from HumanResources.Employee
Group By MaritalStatus, Employee.Gender

Select
Employee.Gender,
MaritalStatus,
Min(SickLeaveHours) as TotalSickHours
from HumanResources.Employee
Group By MaritalStatus, Employee.Gender

Select
Employee.Gender,
MaritalStatus,
Max(SickLeaveHours) as TotalSickHours
from HumanResources.Employee
Group By MaritalStatus, Employee.Gender

Select
Employee.Gender,
MaritalStatus,
Max(SickLeaveHours) as TotalSickHours
from HumanResources.Employee
Group By MaritalStatus, Employee.Gender

Select
Gender,
MaritalStatus,
Sum(SickLeaveHours) as TotalSickHours
from HumanResources.Employee
Group By MaritalStatus, Employee.Gender

Select
Gender,
MaritalStatus,
Sum(SickLeaveHours) as TotalSickHours
from HumanResources.Employee
Group By MaritalStatus, Gender
Having Gender = 'M'

Select
Gender,
MaritalStatus,
Sum(SickLeaveHours) as TotalSickHours
from HumanResources.Employee
Group By MaritalStatus, Gender

Select
Gender,
MaritalStatus,
Sum(SickLeaveHours) as TotalSickHours
from HumanResources.Employee
Group By MaritalStatus, Gender
Having Sum(SickLeaveHours)< 4000

Select
Gender,
MaritalStatus,
Sum(SickLeaveHours) as TotalSickHours
from HumanResources.Employee
Group By MaritalStatus, Gender
Having Sum(SickLeaveHours)> 4000

Select count(Gender)
Gender,
MaritalStatus,
Max(SickLeaveHours) as TotalSickHours
from HumanResources.Employee
Group By MaritalStatus, Gender
--Having Sum(SickLeaveHours)> 4000

Select count(Gender)
Gender,
MaritalStatus,
Max(SickLeaveHours) as TotalSickHours,
Count(Gender)
from HumanResources.Employee
Group By MaritalStatus, Gender

Select count(e.currentFlag) from HumanResources.Employee e

Gender,
MaritalStatus,
Max(SickLeaveHours) as TotalSickHours,
Count(Gender)
from HumanResources.Employee
Group By MaritalStatus, Gender

Select * from HumanResources.Employee

Select count(e.OrganizationNode) from HumanResources.Employee e

Select * from HumanResources.Employee
DECLARE @MYVAL as VARCHAR(20)
Select @MYVAL
Select ISNULL(@MYVAL,'0')

DECLARE @MYVAL as VARCHAR(20)
Select @MYVAL
Select ISNULL(@MYVAL,'0')

DECLARE @MYVAL as VARCHAR(20)
SET @MYVAL = 'Beauty'
Select IIF(@MYVAL IS NULL,'0', @MYVAL)

DECLARE @MYVAL as VARCHAR(20)
SET @MYVAL = 'Beauty'
Select CAST(@MYVAL as char(20)), @MYVAL
Select * From HumanResources.Employee

DECLARE @MYVAL as VARCHAR(20)
DECLARE @MyDate as Datetime
Set @MyDate = GETDATE()
Select @MyDate, CAST(@myDate as date), CAST(@mydate as time)

DECLARE @MyDate as Datetime
Set @MyDate = GETDATE()
Select @MyDate, CAST(@myDate as date), CAST(@mydate as time)

Select @MyDate, CAST(@myDate as date), CAST(@mydate as time), CONVERT(Varchar,@myDate,103)

DECLARE @MYVAL as VARCHAR(20)
Set @MYVAL = 'Hello'
Select TRY_CAST(@MYVAL as int),@MYVAL

DECLARE @sdate as date, @edate as date
SET @sdate = '2019-09-10'
SET @edate = GETDATE()
Select @sdate, @edate

SET @sdate = '2019-09-10'
SET @edate = GETDATE()
Select @sdate, @edate, DATEDIFF(d,@Sdate,@edate), DATEDIFF(M,@Sdate,@edate), DATEDIFF(d,@sdate,@edate),DATEDIFF(S,@sdate, @edate)
Set @MYVAL = 'Hello'

DECLARE @sdate as date, @edate as date
SET @sdate = '2019-09-10'
SET @edate = GETDATE()
Select @sdate, @edate,
DATEDIFF(d, @sdate, @edate),
DATEDIFF(m, @sdate, @edate),
DATEDIFF(s,@sdate, @edate), DATEADD(d,-10, getdate())

DECLARE @sdate as date, @edate as date
SET @sdate = '2019-09-10'
SET @edate = GETDATE()
Select @sdate, @edate,
DATEDIFF(d, @sdate, @edate),
DATEDIFF(m, @sdate, @edate),
DATEDIFF(s,@sdate, @edate), CAST(DATEADD(d,-10, getdate()) as date)

DECLARE @sdate as date, @edate as date
SET @sdate = '2019-09-10'
SET @edate = GETDATE()
Select @sdate, @edate,
DATEDIFF(d, @sdate, @edate),
DATEDIFF(m, @sdate, @edate),
DATEDIFF(s,@sdate, @edate), CAST(DATEADD(d,10, getdate()) as date)

DECLARE @mystring as varchar(200)
SET @mystring = 'The quick brown fox jumps over the little lazy dog.'
SELECT @mystring

DECLARE @mystring as varchar(200)
SET @mystring = 'The quick brown fox jumps over the little lazy dog.'
SELECT @mystring, LEFT(@mystring,10), RIGHT(@mystring,10)

DECLARE @mystring as varchar(200)
SET @mystring = 'The quick brown fox jumps over the little lazy dog.'
SELECT e.LoginID, @mystring, LEFT(@mystring,10), RIGHT(@mystring,10) from HumanResources.Employee e








Select * from Production.Product

Select * from Production.ProductInventory

Select * from Production.[Location]

Select PP.ProductID, PP.[Name], PP.ProductNumber, SUM(PPI.quantity)As Totalquantity
From Production.Product PP
INNER JOIN Production.ProductInventory PPI
on PP.ProductID = PPI.productID
Group By PP.ProductID, PP.[Name],PP.ProductNumber

Select PP.ProductID, PP.[Name], PP.ProductNumber, SUM(PPI.quantity)As Totalquantity
From Production.Product PP
LEFT OUTER JOIN Production.ProductInventory PPI
on PP.ProductID = PPI.productID
Group By PP.ProductID, PP.[Name],PP.ProductNumber

Select PP.ProductID, PP.[Name], PP.ProductNumber, SUM(PPI.quantity)As Totalquantity
,PL.[Name] as LocationName
From Production.Product PP
LEFT OUTER JOIN Production.ProductInventory PPI
on PP.ProductID = PPI.productID
INNER JOIN Production.Location PL
ON PPI.LocationID = pl.LocationID
Group By PP.ProductID, PP.[Name],PP.ProductNumber, PL.[Name]

Select PP.ProductID, PP.[Name], PP.ProductNumber, SUM(PPI.quantity)As Totalquantity
--,PL.[Name] as LocationName
From Production.Product PP
LEFT OUTER JOIN Production.ProductInventory PPI
on PP.ProductID = PPI.productID
--INNER JOIN Production.Location PL
--ON PPI.LocationID = pl.LocationID
Group By PP.ProductID, PP.[Name],PP.ProductNumber--, PL.[Name]


sp_columns[Product]
Select TRY_CAST(@MYVAL as int),@MYVAL

Select CAST(@MYVAL as char(20)), @MYVAL
Select IIF(@MYVAL IS NULL,'0', @MYVAL)




Select * from HumanResources.Employee e1
inner join HumanResources.Employee e2
on e1.LoginID = e2.LoginID

use Table
Truncate table Employees
Insert Into Employees
Values
(3,'XYZ','APM',1,getdate(),1)

Select * from Employees

select e2.*,case when e1.EmpName as RoName from Employees e1
Left outerjoin Employees e2
on e1.EmployeeID = e2.Roid
where e2.EmployeeID is not null

Select(34.99/33.6442)*100


Select * from HumanResources.Employee


Select count(ISNULL(e.OrganizationNode,'0x58')) from HumanResources.Employee e









