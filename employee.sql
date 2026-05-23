#Q1
CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    city VARCHAR(50),
    email VARCHAR(100),
    hire_date DATE
);

#Q2
CREATE TABLE projects (
    project_id INT PRIMARY KEY AUTO_INCREMENT,
    project_name VARCHAR(50),
    emp_id INT,
    status VARCHAR(20),
    budget INT,
    start_date DATETIME,
    end_date DATETIME,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);
#Q3
desc employees;
desc projects;

# Q4 - use to change something and use modify keyword 
alter table projects modify project_id INT AUTO_INCREMENT ;

# Q-5 insert values in employee table 
INSERT INTO employees (name, department, salary, city, email, hire_date) VALUES
("Pooja", "IT", 45000, "Pune", "pooja@gmail.com", "2021-01-15"),
("Anjali", "HR", 38000, "Mumbai", "anjali@gmail.com", "2020-07-10"),
("Rohit", "Finance", 52000, "Nashik", "rohit@gmail.com", "2019-03-25"),
("Sneha", "IT", 60000, "Pune", "sneha@gmail.com", "2022-02-05"),
("Rahul", "HR", 42000, "Nanded", "rahul@gmail.com", "2021-11-20"),
("Kiran", "IT", 48000, "Aurangabad", "kiran@gmail.com", "2023-01-12"),
("Meera", "Finance", 55000, "Mumbai", "meera@gmail.com", "2020-09-02"),
("Sameer", "Sales", 30000, "Thane", "sameer@gmail.com", "2018-05-18"),
("Divya", "Sales", 32000, "Pune", "divya@gmail.com", "2022-08-30"),
("Mahesh", "IT", 70000, "Nashik", "mahesh@gmail.com", "2019-12-10"),
("Amol", "Finance", 45000, "Kolhapur", "amol@gmail.com", "2021-04-07"),
("Priya", "HR", 39000, "Pune", "priya@gmail.com", "2023-03-01"),
("Sagar", "IT", 65000, "Mumbai", "sagar@gmail.com", "2017-06-19"),
("Nisha", "Finance", 51000, "Nagpur", "nisha@gmail.com", "2020-10-23"),
("Varun", "Sales", 28000, "Solapur", "varun@gmail.com", "2024-01-07"),
("Payal", "IT", 59000, "Pune", "payal@gmail.com", "2022-04-17"),
("Harshal", "HR", 40000, "Nashik", "harshal@gmail.com", "2021-05-11"),
("Sheetal", "Finance", 53000, "Mumbai", "sheetal@gmail.com", "2018-11-28"),
("Tushar", "Sales", 31000, "Pune", "tushar@gmail.com", "2023-02-14"),
("Komal", "IT", 62000, "Nanded", "komal@gmail.com", "2019-08-09");

# Q-6 insert values into project 
INSERT INTO projects (project_name, emp_id, status, budget, start_date, end_date) VALUES
("Website Development", 1, "Completed", 150000, "2021-02-01 10:00:00", "2021-05-10 17:00:00"),
("Mobile App", 4, "In Progress", 200000, "2023-01-15 09:30:00", NULL),
("HR Portal", 2, "Completed", 120000, "2020-08-05 11:00:00", "2020-12:01 16:30:00"),
("Finance Dashboard", 3, "Pending", 180000, "2022-10-20 10:45:00", NULL),
("AI Chatbot", 1, "In Progress", 250000, "2024-03-01 09:00:00", NULL),
("CRM System", 10, "Completed", 300000, "2019-01-12 10:15:00", "2019-07-20 15:30:00"),
("Inventory App", 6, "Pending", 160000, "2023-04-25 14:00:00", NULL),
("Billing Software", 7, "Completed", 140000, "2020-02-11 09:20:00", "2020-06-30 18:00:00"),
("E-commerce Site", 13, "In Progress", 280000, "2024-01-10 10:00:00", NULL),
("Marketing Tool", 8, "Pending", 100000, "2018-06-18 08:45:00", NULL),
("Attendance System", 12, "Completed", 90000, "2023-03-10 11:20:00", "2023-06-05 17:00:00"),
("Sales Analyzer", 9, "Completed", 110000, "2022-11-01 12:00:00", "2023-02-10 16:40:00"),
("Loan Manager", 11, "Pending", 170000, "2021-05-20 13:10:00", NULL),
("Tax Calculator", 14, "Completed", 130000, "2019-09-05 10:30:00", "2020-01-12 15:00:00"),
("Customer Support Bot", 15, "In Progress", 220000, "2024-04-14 09:00:00", NULL),
("Payment Gateway", 16, "Completed", 260000, "2022-03-08 14:40:00", "2022-09-30 17:30:00"),
("School ERP", 17, "Pending", 195000, "2023-07-01 10:10:00", NULL),
("Hospital System", 18, "In Progress", 275000, "2024-05-22 09:20:00", NULL),
("POS Machine", 19, "Completed", 85000, "2023-02-15 11:00:00", "2023-04-01 18:00:00"),
("Staff Tracker", 20, "Pending", 105000, "2023-01-30 09:00:00", NULL);

# Q-6 
select * from employees;
select * from projects;

# Q-7 delete data but remain structure 
truncate table projects;

# Q-8 Display all employees who live in Pune.
select * from employees where city='pune';

# Q-9 Display all employees who belong to the “IT” department.
select * from employees where department='IT';

# Q-10 Show all projects started in the year 2024.
select * from projects where start_date between '2024-01-01' AND '2024-12-31';

# Q-11 List all employees along with the projects they are working on.
#Inner Join returns only the matching rows from both tables
#(based on a common column like emp_id).
#If data doesn’t match → it is NOT shown
select name,project_name from employees as e
inner join projects as p 
on e.emp_id=p.emp_id;

#Q-12 delete whoes empid is 1
delete from employees where emp_id=1;

#Q-13 add cascading to table because projects table connect with employee so it not delete directly 
alter table projects 
add constraint fk1 
foreign key (emp_id) references employees(emp_id)
on delete cascade
on update cascade;

# Q-14 for finding foreign key name because still it not working because old fk present 
show create table projects;

#Q 15 delete old fk 
alter table projects drop foreign key 
projects_ibfk_1;

# Q16 Add deleted record return 
INSERT INTO employees (emp_id, name, department, salary, city, email, hire_date)
VALUES 
(2,'Anjali','HR',40000,'nanded','anjali@gmail.com','2022-10-12');

INSERT INTO projects (project_name, emp_id, status, budget, start_date, end_date)
VALUES 
('Website Development', 1, 'Completed', 150000, '2021-02-01 10:00:00', '2021-05-10 17:00:00');
select * from employees;
select * from projects;


SELECT * FROM employees WHERE emp_id = 1;
SELECT * FROM projects WHERE emp_id = 1;

delete from projects where emp_id=1;

#Q-17 Find highest salary employee in each department
select * from employees  as e
where e.salary=(select max(salary) from employees
where department=e.department);

#Q-18 Find lowest salary employee in each department
select * from employees 
where e.salary=(select min(salary) from employees
where department=e.department);

#Q-19 Count number of projects each employee is handling
select name,count(emp_id) 
from employees
group by projects_name;










 
















