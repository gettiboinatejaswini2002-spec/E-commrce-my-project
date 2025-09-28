Taks2:Data Insertion and Handling Nulls

## Overview:

  The main motive of this  to perform INSERT,DELETE,UPDATE operation on sample table using these SQL satements.
  -Insert is uesd to insert the  data into table.
  -Delete is used to delete data from the table.
  -Update is used to update already presnt data with new data.
  
## Features:

  * **Patient table**

  * `pid` int
  
  * `fname` varchar(40)
  
  * `lname` varcahr(40)
  
  * `age` int
  
  * `bg` varchar(40)
 ## Opertaions on the table

 1.`Create`  satement is used for creating a table.
 2.`insert` statement is uesd insert records into table.
 3.Reterive all columns using `SELECT*`
 4.Filter rows using `WHERE` condition.
 5.`DELETE` is used delete records.
 6.`UPDATE` is used to modify existing records.

 ## Sample Data
 
| pid | fname |     lname    |  age  |  bg       | 
| ----| ----- | -----------  | ------| --------- | 
| 1   | Amit  |   Gowda      |  42   |   o+ve    |
| 2   | Riya  |  Jaishawal   |  30   |   b+ve    | 
| 3   | Arjun |  Chowdary    |  27   |   b-ve    | 
| 4   | Neha  |   Reddy      |  59   |   o-ve    | 
| 5   | Rahul |   Yadav      |  18   |  ab-ve    | 


## SQL Queries on the table

* Select all columns:

```sql
select * from patient ;
```
* Insert record into table:
  
```sql
 insert into patient values (1,'madhava','reddy',45,'o+ve')
```


* To modify or update data in table first release security of table:


```sql
 SET SQL_SAFE_UPDATES=0
```

* Filter fname with bg:
```sql
select fname,bg from patient where bg in(o+ve,b-ve)
```

* Filter fname sarting letter a:
  ```sql
  select * from patient where fname like 'a%'

* Update data based on where condition:
```sql
 update patient set fname='raja',lname='raveender',age=66,bg='o-ve' where pid=10
```
* Update data without where condition:
```sql
update patient set fname='sri'
```
* Delete data from the table based on where condition:
```sql
delete from patient where pid=10
```
* Delete data from the table without using where Condition:

```sql
delete from patient
```

## Note

* `SELECT` → Retrieves data from the table.
* `WHERE` → Filters rows based on conditions.
*  `LIKE` → Pattern matching in text columns.
* `Update`→ Modify existing records in table.
* `Delete`→ Remove records from the table.

## Usage

1. Open **MySQL Workbench** or any MySQL client.
2. Run the script to create the database and insert data.
3. Execute the `SELECT` queries to view the results.
  
