use ecommercedb
create table Employee
             (
              eid int,
              fname varchar(40),
              lname varchar(40),
              age int,
              salary int,
              dept varchar(40),
              doj date
              )
              select * from Employee
              insert into Employee values(1,'rajeev','sukla',23,12000,'.net','2011-10-23')
              insert into Employee values(2,'sowmya','kumari',23,19000,'db','2010-11-13')
              insert into Employee values(3,'kishore','kumari',27,36000,'android','2011-10-16')
              insert into Employee values(4,'abimanyu','biswal',22,NULL,'android','2010-02-20')
              insert into Employee values(5,'soni','kumar',24,21800,'.net','2009-06-21')
              insert into Employee values(6,'anu','_singh',22,12000,'db','2010-10-23')
              insert into Employee values(7,'_dinesh','moh%anty',23,15000,'.net','2009-08-26')
              insert into Employee values(8,'nishala','_kumari',22,18000,'db','2008-07-19')
              insert into Employee values(1,'rajeev','sukla',23,12000,'.net','2011-10-23')
              select * from Employee where salary between 18000 and 36000
              select * from Employee where salary not between 18000 and 36000
              select * from Employee where age in (23,25,30)
              select * from Employee where salary is null
              Select * from Employee where salary is not null
              Select * from Employee order by age 
              select * from Employee order by fname asc
              select * from Employee order by fname,lname desc
              select * from Employee where salary>15000 order by lname desc limit 5
              select * from Employee where salary<18000 order by lname desc limit 3,2
              select * from Employee where fname like '%a'
              select * from Employee where fname like '\_%'
              select * from Employee where fname like '%a%' and salary>15000 order by fname limit 1