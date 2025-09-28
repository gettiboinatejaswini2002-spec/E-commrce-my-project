  create table patient
              (
               pid int,
               fname varchar(40),
               lname varchar(40),
               age int,
               bg varchar(40)
               )
               Select * from patient
               insert into patient values (1,'madhava','reddy',45,'o+ve')
               insert into patient values (2,'abhinav','bandra',45,'o-ve')
               insert into patient values (4,'hari','kiran',60,'b-ve')
               insert into patient values (3,'madhava','kiran',52,'o+ve')
               insert into patient values (5,'veena','kumari',42,NULL)
               insert into patient values (6,'k_iran','kumari',39,'b-ve')
               insert into patient values (2,'abhinav','bandra',45,'o-ve')
               insert into patient values (7,'mahes%h','nambootri',36,'b+ve')
               insert into patient values (8,'rahul','kumar',46,'b-ve')
               insert into patient values (9,'bharat','kumar',56,'b-ve')
     insert into patient (pid,fname,lname,age,bg) values (10,'ahana','kumar',78,'o+ve')
    insert into patient (pid,fname,lname,age,bg) values (11,'silli','suresh',81,null)
     SET SQL_SAFE_UPDATES=0
    update patient set fname='raja',lname='raveender',age=66,bg='o-ve' where pid=10
    update patient set fname='menna',lname='kumari' where pid =11
    delete from patient where pid=10
    delete from patient where pid =11
    SET SQL_SAFE_UPDATES=1 
     select fname,bg from patient where bg in(o+ve,b-ve)
    select * from patient where fname like '%a'
    update patient set fname='ravi' 
    delete from patient
