CREATE DATABASE payroll_services

CREATE TABLE employee_payroll(
Id int PRIMARY KEY identity(1,1),
Name varchar(20) NOT NULL,
Salary bigint NOT NULL,
Start_Date DATE NOT NULL
);

SELECT * FROM dbo.employee_payroll

INSERT INTO dbo.employee_payroll(Name,Salary,Start_Date) VALUES
('Lalit',80000.00,'2023-01-17'),
('Siddhart',50000,'2023-01-20'),
('Shubham',30000,'2023-01-16'),
('Arpit',100000.00,'2023-01-17'),
('Ajju',40000,'2023-01-20'),
('Raju',20000,'2023-01-16');

SELECT Salary FROM employee_payroll WHERE Name = 'Lalit';

SELECT * FROM employee_payroll WHERE Start_Date BETWEEN CAST ('2023-01-16' AS DATE) AND GETDATE();

ALTER TABLE employee_payroll ADD Gender varchar(1); -- adding gender coloumn by using alter
UPDATE employee_payroll SET Gender = 'M' WHERE Name ='Lalit'; --updating gender of lalit
SELECT * FROM employee_payroll
UPDATE employee_payroll SET Gender = 'M' WHERE Name ='Siidhart' or Name = 'Arpit';
SELECT * FROM employee_payroll
UPDATE employee_payroll SET Gender = 'M' WHERE Name ='Shubham' or Name = 'Raju' or Name = 'Ajju'; --updating 3 person's gender by using or
SELECT * FROM employee_payroll
UPDATE employee_payroll SET Salary = 120000 WHERE Name = 'Lalit'; --updating salary
SELECT * FROM employee_payroll
UPDATE employee_payroll SET Name = 'Shreya' WHERE Name ='Arpit';
UPDATE employee_payroll SET Name = 'Monica' WHERE Name ='Ajju';
UPDATE employee_payroll SET Gender = 'F' WHERE Name ='Shreya' or Name = 'Monica';

SELECT AVG(Salary) FROM employee_payroll WHERE Gender = 'F' GROUP BY Gender; --finding average salary by gender i.e. F
SELECT AVG(Salary) FROM employee_payroll WHERE Gender = 'M' GROUP BY Gender; --finding average salary by gender i.e. M
SELECT * FROM employee_payroll
