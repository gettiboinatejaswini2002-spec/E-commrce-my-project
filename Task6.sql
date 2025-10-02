use ecommercedb
create table Department
(
dept_id int primary key,
dept_name varchar(40)

)
insert into Department(dept_id,dept_name) values (1,'HR'),(2,'Sales'),(3,'IT'),(4,'Finance')
select * from Department
create table employees
(
emp_id int primary key,
name varchar(40),
salary int,
dept_id int,
foreign key (dept_id)  references Department(dept_id)
)
insert into employees(emp_id,name,salary,dept_id) values(101,'guru',15000,1),(102,'raghu',20000,3),(103,'vyshnavi',25000,4),(104,'Thriveni',35000,4),(105,'mahesh',25000,2)
select * from employees
 select name,salary from employees where salary > (select avg(salary) from employees)
 select emp_id,max(salary) as 'highest_salary' from employees group by emp_id
 select name,emp_id from employees where emp_id in (select emp_id from employees where dept_id in(1,3))
 select d.dept_name from Department d where exists ( select 1 from employees e where e.dept_id = d.dept_id) 
 select e1.name,e1.salary,e1.dept_id from employees e1 where e1.salary >(select avg(e2.salary)from employees e2 where e1.dept_id=e2.dept_id)