-- Created a new database for this SQL project--

-- Create a table to store employee information--
   /*create table employee (
	id INT PRIMARY KEY,
	first_name VARCHAR (20),
	last_name VARCHAR (40),
	department VARCHAR (50), 
	salary DECIMAL (10,2)
);

---- Insert sample employee data into the table--
insert into employee (id, first_name, last_name, department, salary)
Values
(1, 'Alan', 'Stewart', 'Human Resources', 4100.50),
(2, 'Nina', 'Bennett', 'Marketing', 3250.75),
(3, 'Leo', 'Barnes', 'Customer Support', 4300.00),
(4, 'Diana', 'Frost', 'Finance', 4700.25),
(5, 'Eric', 'Sanders', 'Engineering', 6150.00),
(6, 'Monica', 'Reyes', 'Legal', 4550.75),
(7, 'Henry', 'Morgan', 'Sales', 3750.25),
(8, 'Jenna', 'Rhodes', 'IT', 3899.99),
(9, 'Owen', 'Harper', 'Procurement', 4450.60),
(10, 'Grace', 'Fleming', 'Finance', 5000.00),
(11, 'Kevin', 'Walsh', 'Engineering', 6200.00),
(12, 'Lara', 'Kim', 'Marketing', 3700.25),
(13, 'Victor', 'Young', 'Operations', 5400.50),
(14, 'Maya', 'Stone', 'Customer Support', 3550.00),
(15, 'Nathan', 'Green', 'Sales', 4850.75),
(16, 'Zoe', 'Hunter', 'Legal', 3150.00),
(17, 'Julian', 'West', 'Finance', 4050.50),
(18, 'Rachel', 'Pierce', 'Engineering', 5600.25),
(19, 'Derek', 'Wells', 'Marketing', 3950.00),
(20, 'Amelia', 'Franklin', 'Sales', 5150.75),
(21, 'Sean', 'Graham', 'Human Resources', 4250.50),
(22, 'Leah', 'Newton', 'Product Development', 6300.25),
(23, 'Brandon', 'Reed', 'Operations', 4950.75),
(24, 'Claire', 'Stevens', 'Finance', 3100.00),
(25, 'Tyler', 'Marin', 'IT', 4200.50),
(26, 'Tina', 'Goodman', 'Sales', 3750.00),
(27, 'Elijah', 'Bryce', 'Product Development', 5350.75),
(28, 'Ruby', 'Griffin', 'Human Resources', 4400.50),
(29, 'Miles', 'Glover', 'Engineering', 6100.25),
(30, 'Anna', 'Brock', 'Marketing', 5050.75),
(31, 'Simon', 'Cross', 'IT', 3400.00),
(32, 'Isla', 'Dalton', 'Operations', 4100.50),
(33, 'Jonas', 'Faulkner', 'Legal', 3500.00),
(34, 'Vera', 'Hammond', 'Customer Support', 4950.75),
(35, 'Noel', 'Hardy', 'Finance', 4400.50),
(36, 'Melody', 'Jennings', 'Engineering', 6300.25),
(37, 'Adam', 'Lowe', 'Procurement', 5200.75),
(38, 'Chloe', 'Maddox', 'IT', 3000.00),
(39, 'Eli', 'Pittman', 'Sales', 4350.50),
(40, 'Lydia', 'Quinn', 'Customer Support', 3850.00),
(41, 'Max', 'Raymond', 'Product Development', 5600.75),
(42, 'Hazel', 'Sutton', 'Marketing', 4400.50),
(43, 'Damon', 'Turner', 'Legal', 6250.25),
(44, 'Nora', 'Walton', 'Operations', 5150.75),
(45, 'Felix', 'Abbott', 'Human Resources', 3200.00),
(46, 'Ivy', 'Caldwell', 'Finance', 3950.50),
(47, 'Asher', 'Dillon', 'Engineering', 3550.00),
(48, 'Luna', 'Ellison', 'Sales', 5200.75),
(49, 'Cole', 'Finch', 'Procurement', 4500.50),
(50, 'Bella', 'Grimes', 'IT', 6350.25);*/

---- Retrieve all data from the employee table--
Select*from employee; 

---- Employees in Human Resources with salary >= 3000, sorted by salary ascending--
Select*from employee where salary>=3000 and Department='Human Resources' order by salary asc;

---- Employees in IT or Finance departments--
SELECT first_name, last_name, department, salary FROM employee where department in('IT', 'Finance');

---- Employees excluding the Finance department--
SELECT first_name, last_name, department FROM employee where department not in('Finance');

---- Select unique department names in alphabetical order
select distinct department from employee order by department asc;

---- Count the number of unique departments (Result: 11)
Select count(Distinct department) as 'No of Department' from employee;

-- Count IT team members earning more than 4000 (Result: 2)
Select count(*) as #No_of_Team_Member from employee where salary>= 4000 and department='IT';

-- Calculate total, minimum, average, and maximum salary in the Marketing department
-- Total: 20352.25, Min: 3250.75, Avg: 4070.45, Max: 5050.75
Select sum(salary) as 'Total Salary', min(salary) as 'Min Salary', avg(salary) as 'Average Salary', max(salary) as 'Max Salary' from employee where department='Marketing';--Total 20352.25, Min 3250.75, Avg 4070.45, Max 5050.75

-- Find the highest-paid employee(s) in each department
-- This query joins the main employee table with a subquery that identifies
-- the maximum salary per department, then returns the employee(s) who earn that salary

SELECT fp.first_name, fp.last_name, fp.salary, fp.department
FROM employee fp
JOIN (
    SELECT department, MAX(salary) AS max_salary
    FROM employee
    GROUP BY department
) AS max_salaries
ON fp.department = max_salaries.department
   AND fp.salary = max_salaries.max_salary; 










   


