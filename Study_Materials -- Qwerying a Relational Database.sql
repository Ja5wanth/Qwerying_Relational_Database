/* 1) Download the Adventure Works database from the following location and restore it
in your server
Location: https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks
File Name: AdventureWorks2012.bak
AdventureWorks is a sample database shipped with SQL Server, and it can be downloaded
from the GitHub site. AdventureWorks has replaced Northwind and Pubs sample databases
that were available in SQL Server 2005. Microsoft keeps updating the sample database as it
releases new versions.
2) Restore Backup
Follow the below steps to restore a backup of your database using SQL Server Management
Studio:
Open SQL Server Management Studio and connect to the target SQL Server instance
Right-click on the Databases node and select Restore Database
Select Device and click on the ellipsis (...)
In the dialog, select Backup devices, click on Add, navigate to the database backup in
the file system of the server, select the backup, and click on OK.
If needed, change the target location for the data and log files in the Files pane
Note: It is a best practice to place the data and log files on different drives.
Now, click on OK
This will initiate the database restore. After it completes, you will have the
AdventureWorks database installed on your SQL Server instance.
3) Perform the following with help of the above database
Get all the details from the person table including email ID, phone number, and phone
number type
Get the details of the sales header order made in May 2011
Get the details of the sales details order made in the month of May 2011
Get the total sales made in May 2011
Get the total sales made in the year 2011 by month order by increasing sales
Get the total sales made to the customer with FirstName='Gustavo' and LastName ='Achong'*/

--1 . Get all the details from the person table including email ID, phone number, and phone number type

Select * from Person.Person ;
Select * from Person.EmailAddress ;
Select * from Person.PersonPhone ;
Select * from Person.PhoneNumberType ;

Select p.*,pe.EmailAddress,pp.Phonenumber,pt.Name from
Person.Person as p inner join Person.EmailAddress as pe
on p.BusinessEntityID = pe.BusinessEntityID inner join 
Person.PersonPhone as pp on p.BusinessEntityID = pp.BusinessEntityID
inner join Person.PhoneNumberType as pt on pp.PhoneNumberTypeID = pt.PhoneNumberTypeID ;

--2 . Get the details of the sales header order made in May 2011

Select * from Sales.SalesOrderHeader 
Where month(OrderDate) = 5 and
year(OrderDate) = 2011 ;

--3 . Get the details of the sales details order made in the month of May 2011

Select sod.* 
from Sales.SalesOrderDetail as sod inner join Sales.SalesOrderHeader as soh
on sod.SalesOrderID = soh.SalesOrderID
Where month(soh.OrderDate) = 5 and
year(soh.OrderDate) = 2011 ;


--4 . Get the total sales made in May 2011

Select Sum(LineTotal) total_sales from Sales.SalesOrderDetail as sod inner join Sales.SalesOrderHeader as soh
on sod.SalesOrderID = soh.SalesOrderID
Where month(soh.OrderDate) = 5 and
year(soh.OrderDate) = 2011 ;

--5 . Get the total sales made in the year 2011 by month order by increasing sales

Select Sum(LineTotal) Tot_Sales,Datename(Month,OrderDate) as Month_wise 
from Sales.SalesOrderDetail as sod inner join Sales.SalesOrderHeader as soh 
on sod.SalesOrderID = soh.SalesOrderID
Where Year(soh.OrderDate) = 2011
Group by Datename(Month,soh.OrderDate)
Order by Sum(LineTotal) ;

--6 . Get the total sales made by customer with FirstName starts with 'g'

Select * from Sales.SalesPerson as sp inner join Person.Person as pp
on sp.BusinessEntityID = pp.BusinessEntityID
Where FirstName like 'g%' ;

--Select  top 1 * from Sales.SalesPerson

--Select top 1 * from Person.Person





