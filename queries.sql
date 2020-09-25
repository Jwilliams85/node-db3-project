-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select ProductName, CategoryID
from product

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select shipper.CompanyName, od.OrderId, [order].OrderDate
from shipper
join OrderDetail as od
join [order]
where OrderDate < 20120809

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

select p.ProductName, od.Quantity, od.OrderId
from [product] as p 
join OrderDetail as od
ON od.ProductId = p.Id
where OrderId = 10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select c.CompanyName, e.LastName, o.id
from [order] as o 
join [customer] as c ON o.CustomerId = c.Id
join [employee]as e  ON o.EmployeeId = e.Id
