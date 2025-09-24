-- Create the database
CREATE DATABASE EcommerceDB;
USE EcommerceDB;
create table customer
(
  Customerid int primary key auto_increment,
  Name varchar(100),
  Email varchar(100) unique,
  Phone varchar(20),
  Address varchar (200) ,
  CreatedAt timestamp default current_timestamp
)
insert into customer(Customerid,Name,Email,Phone,Address,CreatedAt) values
(1,"Janu","janu123@gmail.com",'7123456789','vinajamuru plot no-23','2023-08-25 12:30:00')
insert into customer(Customerid,Name,Email,Phone,Address,CreatedAt) values
(2,'Ravi','ravikumar@gmail.com','0968876766','Duttaluru main road','2024-11-03 09:40:12')
insert into customer values(3,'Jane Smith','jane.smith@example.com','555-123-4567','456 Oak Avenue','2025-09-24 14:30:00')
insert into customer values(4,'Vamsi','vamsi@gmail.com','342-345-7696','12 muthayalunagar street','2023-11-12 10:45:12')
insert into customer values(5,'Vasu','vasu@gmail.com','967-345-7696','12 hanuman street','2025-11-12 10:45:12')
select * from customer
 
create table categories
 (
  Categoryid int primary key  auto_increment,
  CategoryName varchar(100)
  )
insert into categories(Categoryid,CategoryName) values 
(1,'Clothing'),
(2,'FootWear'),
(3,'Electronics'),
(4,'Books'),
(5,'Home&Kitchen'),
(6,'Accessories')

select * from categories
create table products
(
  Productid int primary key auto_increment,
  Name varchar(100),
  Description varchar (2000),
  Price int ,
  Stock int,
  Categoryid int,
  foreign key (Categoryid) references categories(Categoryid)
  )
  INSERT INTO products (Productid, Name, Description, Price, Stock, Categoryid)
VALUES (1, 'Tata Tea Premium 1kg', 'Rich aroma, strong taste', 520.00, 200,6)
INSERT INTO products (Productid, Name, Description, Price, Stock, Categoryid)
VALUES (104, 'Philips Mixer Grinder', '750W powerful motor with 3 jars', 3499.00, 80,5)
INSERT INTO Products (Productid, Name, Description, Price, Stock, Categoryid)
VALUES (102, 'Nike Air Zoom Pegasus 39', 'Lightweight running shoes, cushioned sole', 5499.00, 120,2)
 INSERT INTO Products (Productid, Name, Description, Price, Stock, Categoryid)
VALUES (103, 'Wooden Study Table', 'Durable wooden study table with storage drawers', 999.00, 20,4)
INSERT INTO Products (Productid, Name, Description,Price, Stock, Categoryid)
VALUES (101, 'Samsung Galaxy S24', '128GB, 8GB RAM, 50MP Camera', 60000.00, 50,3)
select * from products


  create table Orders
  (
   Orderid int primary key,
   Customerid int,
   foreign key (Customerid) references customer(Customerid),
   Orderdate timestamp ,
   Status varchar(50)
   )
   insert into  Orders (Orderid,Customerid,Orderdate,Status) values (201,2, '2025-09-20', 'Pending'),(202,1, '2025-09-21', 'Shipped'),
   (203,3, '2025-09-22', 'Delivered'),(204,4, '2025-09-23', 'Cancelled'),(205,5, '2025-09-24', 'Processing')
   select * from Orders
   create table Orderitems
   (
   Orderitemid int primary key,
   Orderid int,
   foreign key (Orderid) references Orders(Orderid),
   Productid int,
   foreign key (Productid) references products(Productid),
   Quantity int,
   Price  decimal(10,2)
   )
   insert into OrderItems (Orderitemid,Orderid,Productid,Quantity,Price) values
(1,201, 1, 1, 60000.00),   
(2,203,104, 3,   520.00),   
(3,202,102,1,  5499.00),   
(4,205,103,2,  8999.12)   
select * from Orderitems
   
   create table Payments
   (
   Paymentid int primary key,
   Orderid int,
   foreign key (Orderid) references Orders(Orderid),
   Paymentdate timestamp default current_timestamp
   )
   INSERT INTO Payments (Paymentid, Orderid, Paymentdate)
VALUES (1, 201, '2025-09-24 21:00:00')
insert into Payments values(2,205,'2024-11-12 12:12:00')
select * from Payments
  



  

