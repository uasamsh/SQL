create database std;
use std;

# constraints primary key mention on last like this primary key (ID)

create table data(
ID INT Primary key Not Null Auto_increment,
Name Varchar(50),
Age int,
Phone Varchar(12)

);

insert into data value ( 1001 , "John", 20, 123456789987);
insert into data value ( 1002 , "Ahmed", 21, 089456789987);
insert into data value ( 1003 , "khan", 25, 156756789987);
select * from data;
show databases;


create database Company;
use company;

# Constraints
create table Employee
(
ID INT Primary key Not Null Auto_increment,
Name Varchar(50),
Age int,
Phone Varchar(12),
Salary int (50)
);

insert into Employee (ID, Name, Age, Phone, Salary)
values 
( 101 , "John", 30, 123456789987, 50000),
 ( 1002 , "Ahmed", 31, 089456789987, 60000),
 ( 1003 , "khan", 35, 156756789987, 70000);
 
 # using operator  plus and minus in salary
select * from Employee
where salary + 10000 > 70000;

select * from Employee
where salary - 10000 > 50000;




create database School;
use  School;

# Constraint ,,,, not null 
create table Student
(
Id INT Primary key NOT NULL UNIQUE Auto_increment,
Name Varchar (50) NOT NULL,
Age int NOT NULL CHECk (age>=18),
Phone Varchar (12)NOT NULL,
Gender Varchar (10) NOT NULL,
City Varchar (20) NOT NULL Default "NJ"
);

insert into Student (Id, Name, Age, Phone, Gender, City)

values 
( 1011 , "John", 20, 123456789987, "M", "NY"),
( 1012 , "Meka", 23, 089456789987,"F" , "NY"),
( 1013 , "Maria", 25, 156756789987, "F", "NJ"),
( 1014 , "Jessy", 20, 156756789987, "F", "NJ"),
( 1015 , "Nick", 21, 156756789988, "M", "WA"),
( 1016 , "Mollica", 25, 156756789987, "F", "CT");
 
select * from Student;
select ID,Name,Age from Student; 

select * from Student; 
select ID as Id , Name as "Student Name", City as State from student ;

select * from Student
where Gender = "F";

select * from Student
where Age <= 35 ;

select * from Student
where Age > 29 and Age < 32;
select * from Student
where Age > 29 OR Age > 35 OR Age > 30 ;

select * from Student 
Where Age in (18, 25);

select * from Student 
Where Age Not in (18, 25);

select Id, Name, Age from Student 
Where Age between 18 And 25;

select Id, Name, Age from Student 
Where City not between "NJ" And "WA";


select * from Student 
Where City not in ("NJ", "CT", "WA");

select * from Student
where Age > 29 and Age < 32 And Gender = "M";

select * from Student
where Not City = "Lahore";

select * from Student
where not Age < 32;

select * from Student 
where Name like "m%";

select * from Student 
where Name like "m%a";


select * from Student 
where Name like "%a";


select * from Student 
where Name like "m%";

select * from Student 
where Name like "_ol%";

select * from Student 
where Name like "__ka%";

select * from Student 
where Name like "%oh%";

select * from Student 
where Name like "_oh%";

select * from Student 
where Name like "m%" OR Name like "_ol%"  ;

select * from Student 
where Name  not like "_oh%";

select * from Student 
where Binary Name  like "J%";

select * from Student 
where Phone like "%87";

select * from Student 
Order by Phone, Age Asc;

select * from Student 
Order by Phone, Age desc;

select * from Student 
where city = "Ny"
Order by name desc;

select city from student;

select Distinct city from student;

select Distinct Age from student Order by Age;


create database Store;
use  Store;

# Constraints When we set primary key then we mention it on last line we make primary key any column but mosttly use for ID and PHONE
create table Salesman
(
Id INT Primary key NOT NULL UNIQUE Auto_increment,
Name Varchar (50) NOT NULL,
Age int NOT NULL CHECk (age>=18),
Phone Varchar (12)NOT NULL,
Gender Varchar (10) NOT NULL,
State Varchar (20) NOT NULL Default "NJ",
Primary key (ID)
);

insert into Salesman(Id, Name, Age, Phone, Gender, State)
values 
( 1101 , "Ronaldo", 20, 12345678456, "M", "ML"),
( 1102 , "Mekaila", 23, 08945678879,"F" , "Nj"),
( 1103 , "maria", 22 , 15675678890, "", "WA"),
( 1104 , "Jessy", 20, 156756789975, "", "NJ"),
( 1105 , "Dohat", 21, 156756789943, "M", "WA"),
( 1106 , "Alien", 34 , 1567567987, "F", "CT");

select * from Salesman
where Gender is  null; 

select * from Salesman
where Gender is not null; 

select * from Salesman
limit 3;
# offset start 3 rows skip 
select * from Salesman
limit 3 , 3;


select * from Salesman
where State = "NJ"
limit 2;

select * from Salesman
where State = "NJ"
order by phone asc
limit 2;

# Aggregate functions
SELECT count(*) FROM store.salesman;

SELECT count(*) as count FROM store.salesman;

SELECT sum(Age) FROM store.salesman;

SELECT min(age) FROM store.salesman;

SELECT max(age)as age, name , state FROM store.salesman;

SELECT min(percentage) FROM store.salesman;

SELECT avg(Age) FROM store.salesman;

# Using operators +, -, * /, %

select * from salesman
where age + 20 > 35;

select * from salesman
where age = 20 ;

select * from salesman
where age <=35 ;

select * from salesman
where age >=25 ;

# group by claus

select state from salesman
group by state;


select state, count(ID)  from salesman
group by state;

select state, count(ID) as ID  from salesman
group by state;

select state, name, count(ID)  from salesman
group by state;

select state, name, count(ID)  from salesman
group by state, name;

# Having clause using for group

select state from salesman
group by state
having max(Age) > 20;

select state, count(id)from salesman
group by state
having max(Age) > 20;

select state, count(id) as Id from salesman
group by state
having max(Age) > 20;

# update 

update salesman
set Age = 45, phone = "45789043209"
where id = 104;

update salesman
set Age = 28
where id IN (101, 103);

# commit & Rollback if i put wrong data and we wants to revert then we use rollback we also use rollback insert , delete or update command
# commit means save the changes which will be permanent when we rollback use commit command cannot chang data
# before changes to commit cannot rollback.alter
#  https://www.youtube.com/watch?v=sQrdLH-QhBQ&list=PL0b6OzIxLPbzf12lu5etX_vjN-eUxgxnr&index=18
  
SELECT * FROM store.salesman;
commit;

update store.salesman
set  name = " John"
where id= 104;
Rollback; # if we update wrong then use rollback give us previuos name


# if we use commit command and give any code that we want not dont change then
SELECT * FROM store.salesman;

update store.salesman
set  name = " Ronaldo"
where id= 101;
commit; # not will be  change it is permanent

#  Delete command

Commit;

delete from store.salesman
where Gender = "F";

Rollback;

# primary key

ALter table salesman
Add Primary Key (ID);

ALter table salesman
Add foreign key (city) References City(cid);




SELECT * FROM store.salesman;


SELECT * FROM store.salesman
where Name is not null; 


create database Bank;
use  Bank;

# Table for foreign key
create table City
(
cid  INT Not Null Unique Auto_Increment,
cityName Varchar(50) Not Null,
primary key (cid)
);

insert into city (CityName)
values
("Wethersfield"),
("Hartford"),
("newington"),
("manchester"),
("manchester"),
("Wethersfield");

update Bank.City
set  CityName = "London"
where cid= 5;

update Bank.City
set  CityName = "Berlin"
where cid= 6;


# Constraints When we set primary key then we mention it on last line we make primary key any column but mosttly use for ID and PHONE
# Table For primary key
create table Staff
(
Id INT NOT NULL UNIQUE Auto_increment,
Name Varchar (50) NOT NULL,
Age int NOT NULL CHECk (age>=18),
Phone Varchar (12)NOT NULL,
Gender Varchar (10) NOT NULL,
City INT Not NULL,     # bcz we putt int in this column on primary key table
Primary key (ID),
foreign key (city) References City(cid)

);

insert into Bank.Staff(Id, Name, Age, Phone, Gender, City)
values 
( 1 , "Ronaldo", 40, 12345678456, "M", 4),  # staff live in cid 4 which is manchester
( 2 , "Mekaila", 43, 08945678879,"F" , 6),   # staff live in cid 6 which is Berlin
( 3 , "maria", 42 , 15675678890, "F", 3),  # staff live in cid 3 which is manchester
( 4 , "Jessy", 50, 156756789975, "F", 5), # staff live in cid 5 which is London
( 5 , "Nick", 51, 156756789943, "M", 1), # staff live in cid 1 which is Wethersfield
( 6 , "Alien", 54 , 1567567987, "F", 2); # staff live in cid 2 which is Hartfoed  


# inner join using alias staff s, city c
select * from Bank.Staff s inner join Bank.city c
ON Staff.city = city.cid;

# Now we dont need the city and cid column so i need just below column
 Select s.Id, S.Name, s.Age, s.Gender, c.cityName From Bank.Staff s Inner join Bank.city c
 On S.City = C.cid; 
 # Just need City name
Select s.Id, S.Name, s.Age, s.Gender, c.cityName From Bank.Staff s Inner join Bank.city c
On S.City = C.cid
where c.cityName = "Manchester"; 

 Select * From Bank.Staff s Left join Bank.city c
 On S.City = C.cid; 
 
 # Right Join
  Select * From Bank.Staff s Right join Bank.city c
 On S.City = C.cid
 Where Gender = "M"
 Order BY Name; 
 
 
 # Cross Join
  Select * From Bank.Staff s Cross join Bank.city c;
  
  Select S.Id, S.Name, S.Gender, C.cityName From Bank.Staff s Cross join Bank.city c;
  
  # Write without cross join give same result like cross join just put comma ,
  
  Select S.Id, S.Name, S.Gender, C.cityName From Bank.Staff s , Bank.city c;
  
  # Join Multiple Tables
  
  Create Table Bank.Position 
  ( PID INT Not NUll Auto_Increment,
  PName Varchar (50) Not Null,
  Primary key (PID)
  );
  
  
  Insert Into Bank.Position (PName)
  Values
  ("Manager"),
  ("Cashier"),
  ("Accountant")
  ;
select * from Bank.Staff s inner join Bank.Position p
ON s.Position = P.pid;

 # MUltiple Tables Join 3 Tables 
 
 select * from Bank.Staff s Inner join Bank.City , Bank.Position p;
 
 select * from Bank.Staff s 
 Inner join Bank.City c
 ON S.city = C.cid 
 Inner join Bank.Position p
 ON s.Position = Position.PID;
 
 Select s.id, s.Name, S.Age, S.Gender, C.cityName, P.PName
 from Bank.Staff s 
 Inner join Bank.City c
 ON S.city = C.cid 
 Inner join Bank.Position p
 ON s.Position = Position.PID;
 
 # Group by and having claus using aggregation
 
 select city, count(city) from bank.Staff
 group by city  # How many staff came from city .... From Id 1 only 1 staff comes.
 Having count(city) >=0; # how many student came greater then 0
 # Show city Name
 
 select c.cityName, Count(S.city)
 from bank.Staff s inner join Bank.city 
 ON s.city = C.cid
 where age >=40
 group by City
 order by count( s.city) ASC;
 
 
  select * from Bank.Staff s Inner join Bank.Position p
 ON S.Position = P.Pid ;

 
 # subquery OR Nested query
 
 
 















show databases;
Show Tables;

