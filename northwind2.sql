-- select database
use northwind;
-- return all fields from categories, * means all fields from the table
select*
from categories;

select*
from customers;


select customerName,City,Country
from customers;

select productID, productname
from products;

select distinct country
from customers;


-- number of different countries

select count(distinct country)
from customers;

-- number of rows
select count(country)
from customers;

select distinct city
from suppliers;

select count(distinct city)
from customers;

-- where clause

select*
from customers
where country = 'mexico';

select*
from products
where productID=1;

select *
from Customers
where city='London';

select count(*)
from customers
where country='USA';

select*
from products
where price >100;

select*
from orders
where orderdate >1996-07-30;

select*
from customers
where country != 'uk';

--

select*
from customers
where customerID >= 15;

select*
from order_details
where quantity <3;

select*
from employees
where birthdate >1960-01-01;

SELECT * 
FROM Customers
WHERE Country = 'Germany' and City = 'Berlin';

SELECT * 
FROM Customers
WHERE Country = 'Germany' or City = 'Berlin';

SELECT * FROM Suppliers
WHERE Country = 'Japan' AND City = 'Tokyo';

SELECT * FROM Suppliers
WHERE Country = 'Japan' or City = 'Tokyo';

SELECT *
FROM Customers
WHERE Country = 'UK' AND City = 'London';

SELECT *
FROM Customers
WHERE Country = 'UK' or country= 'USA';

SELECT *
FROM products
WHERE price <5 and productID >10;

SELECT * 
FROM Customers
WHERE City = 'Berlin' OR City = 'Stuttgart';

SELECT * 
FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';

SELECT * 
FROM Customers
WHERE City = 'Portland' OR City = 'Kirkland';

SELECT * 
FROM orders
WHERE Orderdate <  1996-08-27  OR Orderdate >1997-02-21;

SELECT * 
FROM Customers
ORDER BY Country;

SELECT * 
FROM Customers
ORDER BY City;

SELECT * 
FROM Customers
ORDER BY postalcode;



SELECT * 
FROM Products
ORDER BY price;


SELECT productname,price
FROM products 
ORDER BY price;

SELECT * 
FROM Customers
ORDER BY Country DESC;


SELECT productname,price
FROM products 
ORDER BY price desc;


SELECT * 
FROM suppliers
ORDER BY City DESC;


SELECT * 
FROM Customers
ORDER BY Country, CustomerName;


SELECT * 
FROM Customers
ORDER BY Country ASC, CustomerName DESC;


SELECT * 
FROM employees
ORDER BY lastname, birthdate DESC;

SELECT *
FROM customers
where country= 'USA'
ORDER BY CustomerName;


SELECT * 
FROM Customers
LIMIT 3;

SELECT * 
FROM Products
ORDER BY PRICE 
LIMIT 5;


SELECT * 
FROM Customers
WHERE Country='Germany'
LIMIT 3;

SELECT * 
FROM Products
WHERE CategoryID=1
LIMIT 3;


SELECT * 
FROM Products
where price>20
ORDER BY PRICE 
LIMIT 10;

SELECT * 
FROM Customers
WHERE city='London'
LIMIT 3;

SELECT MIN(Price) AS SmallestPrice
FROM Products;

SELECT MAX(Price) AS LargestPrice
FROM Products;

SELECT MAX(OrderDate) AS mostrecent 
FROM Orders;


SELECT MAX(Price) AS highestprice
FROM Products;

SELECT MIN(Quantity) AS lowestQuantity
FROM Order_Details;

select*
from customers
where customername like '_r%';

select*
from customers
where customername like 'a__%';

select*
from customers
where contactname like 'a%o';

select count(productid)
from products;

select avg(price)
from products;

select sum(quantity)
from order_details;

SELECT COUNT(ProductID)
FROM Products;

SELECT AVG(Price)
FROM Products;

SELECT SUM(Quantity)
FROM Order_Details;


SELECT AVG(quantity)
FROM Order_Details;

SELECT COUNT(employeeID)
FROM employees;

SELECT SUM(quantity) as totalquantity
FROM Order_Details;

SELECT SUM(price)
FROM Products;


SELECT * 
FROM Customers
WHERE CustomerName LIKE 'a%';


SELECT * 
FROM Customers
WHERE CustomerName LIKE '%a';

SELECT *
 FROM Customers
WHERE CustomerID LIKE '2%';

SELECT * 
FROM Customers
WHERE CustomerName LIKE '%or%';


 SELECT * 
 FROM Customers
WHERE CustomerName LIKE '__r%';


SELECT * 
 FROM Customers
WHERE ContactName LIKE '%moos%';

 SELECT * 
 FROM Customers
WHERE ContactName LIKE 'a%o';

SELECT * 
FROM Customers
WHERE CustomerName LIKE 'a__%';


SELECT * 
FROM Customers
WHERE CustomerName not like 'a%';

SELECT * 
 FROM suppliers
WHERE Country LIKE '%land%';

SELECT * 
 FROM employees
WHERE FirstName LIKE '_n%';

SELECT * 
 FROM shippers
WHERE ShipperName LIKE '%Express%';

SELECT * 
FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

SELECT * 
FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');
 

SELECT * 
FROM Customers
WHERE City IN ('london', 'paris', 'madrid');

SELECT * 
FROM Customers
WHERE Country IN (SELECT Country FROM Suppliers);





SELECT orderID, shipperid
FROM Orders
WHERE ShipperID IN (1,3);

SELECT *
FROM Orders
WHERE ShipperID IN (1,3);

SELECT * 
FROM products
WHERE Price IN (10, 20, 30)
order by price;

SELECT * 
FROM customers
WHERE customerID IN (SELECT customerid FROM Orders);


SELECT * 
FROM Products
WHERE Price BETWEEN 10 AND 20;

SELECT * 
FROM Products
WHERE Price NOT BETWEEN 10 AND 20;

SELECT * 
FROM Products
WHERE Price NOT BETWEEN 10 AND 20
order by price;

SELECT * 
FROM Products
WHERE productname  BETWEEN 'geitost' AND 'konbu'
order by productname;

SELECT * 
FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID NOT IN (1,2,3);



SELECT * 
FROM Products
WHERE Price BETWEEN 50 AND 100;

SELECT * 
FROM orders
WHERE orderdate BETWEEN 1996-01-01 and 1996-12-31;

SELECT * 
FROM order_details
WHERE quantity BETWEEN 5 AND 15;

SELECT CustomerID AS ID, CustomerName AS Customer
FROM Customers;

-- Retrieve all columns from the "Customers" table.

Select*
from Customers;

-- Retrieve only the "CustomerName" and "City" columns from the "Customers" table

select customerName,City
from customers;

-- Retrieve distinct values of the "City" column from the "Customers" table.
Select distinct City
from customers;

-- Retrieve all columns from the "Products" table where the "Price" is greater than 50.
Select*
from Products
where Price>50;

-- Retrieve all columns from the "Customers" table where the "Country" is either 'USA' or 'UK'.
Select*
from customers
where Country='USA'or'UK';

-- Retrieve all columns from the "Orders" table, sorted by the "OrderDate" in descending order.
select*
from Orders
Order by orderdate DESC;

-- Retrieve all columns from the "Products" table where the "Price" is between 20 and 50, ordered by descending "Price".
Select*
From Products
where price between 20 and 50;

-- Retrieve all columns from the "Customers" table where the "Country" is 'USA' and "City" is either 'Portland' or 'Kirkland', ordered by ascending "CustomerName".
Select*
from Customers
Where Country='USA'and City='Portland' or 'Kirkland'
order by customername;

-- Retrieve all columns from the "Customers" table where the "Country" is 'UK' or "City" is 'London', ordered by descending "CustomerName".
Select*
from Customers
Where Country='UK'or City='London'
order by customername DESC;

-- Retrieve all columns from the "Products" table where the "CategoryID" is 1 or 2, ordered by ascending "ProductName".
SELECT *
FROM Products
WHERE CategoryID IN (1,2)
order by ProductName ASC;


-- Aliases
select customerid as id, customername as customer
from customers;

select customername as customer,contactname as 'contact person'
from customers;

select customername, concat_ws(Address,postalcode,city,country)as address
from customers;

select orders.orderid, orders.orderdate,
customers.customername
from customers,orders
where customers.customername='Around the horn' and
customers.customerid=orders.customerid;

select o.orderid, o.orderdate, c.customername
from customers as c,orders as o
where c.customername='Around the horn' and
c.customerid=o.customerid;
