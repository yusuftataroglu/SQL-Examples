--Hangi çalýþan hangi çalýþana baðlýdýr?

use NorthWindDB

--Hatalý olan
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
calisan.FirstName as 'Çalýþan', mudur.FirstName as 'Müdür' from Employees calisan
inner join Employees mudur on calisan.ReportsTo = mudur.EmployeeID