#create database here
create database student;
desc computer;
desc address;

#use this databse 
use student;

#insert values into this table
INSERT INTO computer (StudentName, studentMarks, StudentEmail, city)
VALUES
("pooja", 96.43, "poojabhavar07@gmail.com", "sangamner"),
("Anjali", 90.00, "anjali@gmail.com", "nanded"),
("Shubhangi", 89.43, "shubhangi@123", "latur"),
("om", 89.00, "om@gmail.com", "shirdi"),
("pranita", 61.00, "pranita@gmail.com", "chandrapur"),
("Shubham", 92.00, "shubham@gmail.com", "ahilyanagar");

#here change datatype of studentmarks column 
alter table computer modify studentMarks decimal(5,2);

# show structure of table
desc computer;

#change constraint of enrollmentno is auto_increment but it already put into create table query but
#not working because if it working then showing into extra colun in structure when we apply desc 
alter table computer modify enrollmentNo int auto_increment ;

# to see data of table
select * from computer;


select StudentName, studentMarks from computer;
select StudentName from computer where studentMarks>90;
select StudentName from computer where city="nanded";
select StudentName from computer order by studentMarks desc;
select StudentName from computer order by studentMarks desc limit 3;
use student ;

#create another table city and create enrno as a foreign key with the reference of enrollmentNo
create table Address(city varchar(50), district varchar(50), state varchar(50),pincode int(10),
enrno int(20), 
foreign key(enrno) references computer(enrollmentNo));

#insert data into address
insert into  Address(city, district, state, pincode, enrno) 
values
("sangamner", "ahilyanagar", "maharashtra",422605, 1),
("katraj", "pune", "maharashtra",411001, 1),
("sangamner", "ahilyanagar", "maharashtra",422605, 1);

#drop column city from computer
alter table computer drop column city;
select * from computer;
select * from address;

#insert another info into address
insert into  Address(city, district, state, pincode, enrno) 
values
("sangamner", "ahilyanagar", "maharashtra",422605, 2),
("katraj", "pune", "maharashtra",411001, 3);

# delete data and keep structure 
truncate table address;

#insert fresh other info into address 
insert into  address(city, district, state, pincode, enrno)values
("katraj","pune","maharastra",411001,1),
("sangamner","ahilyanagar","maharastra",422606,2),
("rajapur","kolhapur","maharastra",422608,3),
("gurunagar","lucknow","punjab",5435646,4),
("noida","UP","uttar pradesh",847378,5);

# joins 

#inner joins
# retrive same data from both the table
select * #column name that we want#
from computer #table name that we want join with address#
inner join address # join table #
on computer.enrollmentNo=address.enrno; #same column in both table#

# by using alias we execute it means short form of table name 
 
select * 
from computer as c
inner join address as a
on c.enrollmentNo  = a.enrno;

# left joins
#All from left + matching from right
select * 
from computer as c # left table#
left join address as a #right table#
on c.enrollmentNo  = a.enrno; 

#right joins
#All from right + matching from left
select StudentName
from computer as c
right join address as a
on c.enrollmentNo  = a.enrno; 

# full joins 
# retrive all records from both table
# full join not exist in sql when we want retrive both record then use left as well as right
select * 
from computer as c
left join address as a
on c.enrollmentNo  = a.enrno
union # union means combine both table #
select * 
from computer as c
right join address as a
on c.enrollmentNo  = a.enrno; 

# like 
select * from computer where StudentName like "%a";

# find highest marks of student 
select StudentName,studentMarks
from computer 
where studentMarks=(select max(studentMarks) from computer );

#find first highest marks using limit 
select StudentName from computer 
order by studentMarks desc 
limit 1 ;

#second highest marks using limit and offset 
select StudentName, StudentMarks
from computer 
order by studentMarks desc 
limit 1 offset 1;

# second highest salary using < operator 
select max(StudentMarks) from computer
where studentMarks
<(select max(studentMarks) from computer);

SELECT MAX(studentMarks)
FROM computer
WHERE studentMarks NOT IN (SELECT MAX(studentMarks) FROM computer);
						#it gives 96 
# so it consider all marks remaining but SELECT MAX(studentMarks)
#FROM computer it gives highest mark that not obtain in 96 or +
#not in remove highest number 

#group by
#group by use to GROUP BY is used to group rows that have the same values in one or more columns,
#and then apply aggregate functions on each group.
#Aggregate functions COUNT(), SUM(), AVG(), MAX(), MIN() 

select StudentName, count(enrollmentNo)
from computer 
group by enrollmentNo;

use student;
INSERT INTO computer (StudentName, studentMarks, StudentEmail)
VALUES
("pooja", 96.43, "poojabhavar74@gmail.com"),
("Anjali", 90.00, "anjali123@gmail.com" ),
("Shubhangi", 89.43, "shubhangi@gmail.com" ),
("om", 89.00, "ombalsane@gmail.com"),
("pranita", 61.00, "pranitamate@gmail.com" ),
("Shubham", 92.00, "shubhambhavar108@gmail.com");

select * from computer;















































 





