--- supriya priyadarsani pati ---
create database employees;
use employees;
create table emp_details
(emp_id int auto_increment primary key,
name varchar(100),
department varchar(100),
salary int 
 );
 INSERT INTO emp_details (name, department, salary) VALUES
('Supriya Priyadarsani Pati', 'HR', 46000),
('Baisakhi Patra', 'Finance', 52000),
('Satyabrata Sahoo', 'IT', 65000),
('Lopamudra Behera', 'Marketing', 48000),
('Debasis Swain', 'Sales', 50000),
('Pratima Nayak', 'HR', 45000),
('Chinmayee Das', 'Finance', 54000),
('Sibasis Panda', 'IT', 66000),
('Ranjan Mohanty', 'Operations', 49000),
('Rashmita Pradhan', 'Sales', 52000),
('Pritam Barik', 'IT', 67000),
('Smruti Rekha Jena', 'Finance', 51000),
('Manoj Kumar Pradhan', 'Marketing', 49000),
('Ankita Pati', 'HR', 46000),
('Bikash Rout', 'IT', 68000),
('Ipsita Sahoo', 'Operations', 50000),
('Soumya Ranjan Behera', 'Finance', 53000),
('Suchismita Patra', 'Sales', 51000),
('Ashutosh Nayak', 'IT', 64000),
('Priyanka Mohanty', 'Marketing', 48000),
('Ritesh Das', 'Finance', 55000),
('Deepali Panda', 'Operations', 49500),
('Gourav Barik', 'IT', 66000),
('Sonali Swain', 'HR', 47000),
('Satyajit Pati', 'Sales', 52000),
('Liza Jena', 'Finance', 51000),
('Bhabani Pradhan', 'IT', 64000),
('Sasmita Patra', 'Marketing', 48500),
('Arun Kumar Nayak', 'Operations', 50000),
('Puja Sahoo', 'Sales', 53000);
select * from emp_details;
---
create view higher_salaries_emp as select * from emp_details where salary>50000;
---
select * from higher_salaries_emp;
---
create view higher_avg_salary as select department, avg(salary) as avg_salary, count(emp_id) as total_emp 
from emp_details group by department 
having avg(salary)>60000 ;
---
select * from higher_avg_salary;
---
create view show_details as select emp_id,department,name from emp_details ;
---
select * from show_details;