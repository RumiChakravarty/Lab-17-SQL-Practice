-- 1st

Select * from Customers

--2nd
select distinct Country from Customers

--3

select * from Customers where CustomerID like 'Bl%'

--4
select top 100* from Orders

--5
select * from Customers where PostalCode in ('1010','3012','12209','05023')

--6
select * from Orders  where ShipRegion is not NULL

--7
select * from Customers order by Country, City

--8
INSERT INTO [dbo].[Customers]
           ([CustomerID],[CompanyName],[ContactName],[ContactTitle],[Address],[City],[Region],[PostalCode],[Country],[Phone],[Fax])
     VALUES
           ('2312','GrandCircus','RumiChakravarty','Student','4126ThreeOaks','Troy','Michigan','48098','USA','1231231234','987987987')


--9
Update Orders set ShipRegion='EuroZone' where ShipCountry='France'



--10

Delete from [Order Details] where Quantity='1'

--11
select AVG(Quantity) as Average, MAX(Quantity) as Maximum, MIN(Quantity) as Minimum from [Order Details]

--12
select AVG(Quantity) as Average, MAX(Quantity) as Maximum, MIN(Quantity) as Minimum from [Order Details] Group by OrderID

--13
select CustomerID from Orders where OrderID = '10290'

--14
--Inner Join
select Orders.OrderID, Customers.ContactName, Customers.CompanyName from Orders Inner join Customers on Orders.CustomerID = Customers.CustomerID

--Left Join
select Orders.OrderID, Customers.ContactName, Customers.CompanyName from Orders left join Customers on Orders.CustomerID = Customers.CustomerID

--Right Join
select Orders.OrderID, Customers.ContactName, Customers.CompanyName from Orders Right join Customers on Orders.CustomerID = Customers.CustomerID

--15

select FirstName from Employees where ReportsTo is Null

--16
select FirstName from Employees where ReportsTo = (
select EmployeeID from Employees where FirstName='Andrew')