
--Create an inner join that joins customers and orders and specifies the name of the customer and the invoiceId
select "Customer"."FirstName", "LastName" , "Invoice"."InvoiceId"
from "Customer" 
inner join "Invoice"  ON "Customer"."CustomerId"  = "Invoice"."CustomerId"; 

 
--Create an outer join that joins the customer and invoice table, specifying the CustomerId, firstname, lastname, invoiceId, and total.
select "Customer"."CustomerId","FirstName" "LastName" , "Invoice"."InvoiceId","Total" 
from "Customer"
left outer join "Invoice"  ON "Customer"."CustomerId"  = "Invoice"."CustomerId";

--Create a right join that joins album and artist specifying artist name and title.

select "Artist"."Name" ,"Album"."Title" from "Artist"  
right join "Album"  ON "Artist"."ArtistId" = "Album"."ArtistId";

--Create a cross join that joins album and artist and sorts by artist name in ascending order.

select "Artist"."Name" , "Album"."Title" from "Artist" 
cross join "Album" order by "Artist"."Name" asc;

--Perform a self-join on the employee table, joining on the reportsto column.

select e1."EmployeeId" as managerId, e1."FirstName" , e1."LastName",  e2."FirstName", e2."LastName", e2."ReportsTo"  
from "Employee" e1
inner join "Employee" e2 on e2."ReportsTo" = e1."EmployeeId";

--Use a unionall to create a table that has the name of all employees and customers
select "FirstName", "LastName" from "Employee" e 
union all select "FirstName" ,"LastName" from "Customer" c ;