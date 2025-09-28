use mytables
create table Sales (
    SaleID int primary key,
    Product varchar(50),
    Category varchar(50),
    Quantity int,
    Price  int
);

insert into Sales (SaleID, Product, Category, Quantity, Price) values
(1, 'Laptop', 'Electronics', 2, 60000),
(2, 'Mouse', 'Electronics', 5, 500),
(3, 'Shirt', 'Clothing', 3, 1200),
(4, 'Jeans', 'Clothing', 2, 2500),
(5, 'Book', 'Stationery', 10, 200),
(6, 'Pen', 'Stationery', 20, 20),
(7, 'Phone', 'Electronics', 1, 35000);
select * from Sales
select sum(price) as 'Totalprice' from Sales
select min(Price) as 'Min_Salary' from Sales
select max(Price) as 'Max_salary' from Sales
select count(*) as 'All records' from Sales
select avg(Price)  as 'Avgerage' from sales
select Product,Category from sales group by Product,Category 
select Product,min(Price) as 'Min_price' from Sales group by Product
select Category ,count(*) ,avg(Price) as 'Average' from Sales group by Category
select Category,min(Price)  from Sales group by Category having min(Price)<1200
select Category,max(Price) from Sales group by Category having max(price)>1200
select Category,count(*) from Sales group by Category having count(*)<3
select Category,count(*) from Sales group by Category having count(*)<3 order  by Category desc limit 	1
select Category,count(*) from Sales group by Category having count(*)<3 order  by Category  limit 	1
