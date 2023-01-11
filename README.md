# Qwerying_Relational_Database
MS SQL Certification Training
support@intellipaat.com - +91-7022374614 - US: 1-800-216-8930 (Toll Free)
Project 2 – Querying a Large Relational Database
Problem Statement:
How to get details about customers by querying a database?
Topics:
In this project, first, you will work on downloading a database and restoring it on the server.
You will then query the database to get customer details like name, phone number, email ID,
sales made in a particular month, increase in month-on-month sales, and even the total sales
made to a particular customer.
Highlights:
 Table basics and data types
 Various SQL operators
 Various SQL functions
Tasks to be performed:
1) Download the Adventure Works database from the following location and restore it
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
 Open SQL Server Management Studio and connect to the target SQL Server instance
 Right-click on the Databases node and select Restore Database
 Select Device and click on the ellipsis (...)
 In the dialog, select Backup devices, click on Add, navigate to the database backup in
the file system of the server, select the backup, and click on OK.
 If needed, change the target location for the data and log files in the Files pane
Note: It is a best practice to place the data and log files on different drives.
 Now, click on OK
This will initiate the database restore. After it completes, you will have the
AdventureWorks database installed on your SQL Server instance.
MS SQL Certification Training
support@intellipaat.com - +91-7022374614 - US: 1-800-216-8930 (Toll Free)
3) Perform the following with help of the above database
 Get all the details from the person table including email ID, phone number, and phone
number type
 Get the details of the sales header order made in May 2011
 Get the details of the sales details order made in the month of May 2011
 Get the total sales made in May 2011
 Get the total sales made in the year 2011 by month order by increasing sales
 Get the total sales made to the customer with FirstName='Gustavo' and LastName ='Achong'
