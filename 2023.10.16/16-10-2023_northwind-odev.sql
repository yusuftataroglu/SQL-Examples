--Hangi �al��an hangi �al��ana ba�l�d�r?

use NorthWindDB

--Hatal� olan
select 
e.FirstName,
e.LastName,
(select e.FirstName from Employees where e.EmployeeID = e.ReportsTo),
(select e.LastName from Employees where e.EmployeeID = e.ReportsTo)
from Employees e

--subquery ile
select
e.FirstName,
e.LastName,
(select r.FirstName from Employees r where r.EmployeeID = e.ReportsTo),
(select r.LastName from Employees r where r.EmployeeID = e.ReportsTo)
from Employees e


--inner join ile
select
calisan.FirstName as '�al��an', mudur.FirstName as 'M�d�r' from Employees calisan
inner join Employees mudur on calisan.ReportsTo = mudur.EmployeeID