
--Select all records from the Employee table.
select * from "Employee"; 

--Select all records from the Employee table where last name is King
select * from "Employee" where "LastName" = 'King';

--Select all records from the Employee table where first name is Andrew and REPORTSTO is NULL.

select * from "Employee" where "FirstName" = 'Andrew' and "ReportsTo" = null;

--Select all albums in Album table and sort result set in descending order by title

select * from  "Album" order by "Title" desc;

--Select first name from Customer and sort result set in ascending order by city

select "FirstName" from  "Customer" order by "City" asc;

--Select all invoices with a billing address like “T%”

select * from "Invoice" where "BillingAddress" like 'T%';

--Select all invoices that have a total between 15 and 50
select * from "Invoice" where "Total" between 15 and 50;

--Select all employees hired between 1st of June 2003 and 1st of March 2004
select * from "Employee" where "HireDate" between '2003-06-01' and '2004-03-01';

-----INSERT PRACTICES---------
--Insert two new records into Genre table
insert into "Genre" ("GenreId" , "Name") Values (11, 'Hip Hop'), (12, 'Reggae');

--Insert two new records into Employee table
insert into "Employee" ("EmployeeId" , "FirstName" , "LastName") values (21 , 'Tim', 'Morris'), (22, '')
  





