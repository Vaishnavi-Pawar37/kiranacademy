USE company_db;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    joining_date DATE,
    email VARCHAR(100),
    status VARCHAR(20)
);

INSERT INTO employees
(employee_id, employee_name, department, salary, city, joining_date, email, status)
VALUES
(101, 'Amit Patil', 'IT', 55000, 'Pune', '2024-06-15', 'amit@company.com', 'Active'),
(102, 'Riya Sharma', 'HR', 38000, 'Mumbai', '2025-02-10', 'riya@company.com', 'Active'),
(103, 'Rahul Deshmukh', 'Sales', 45000, 'Pune', '2025-05-20', 'rahul@company.com', 'Active'),
(104, 'Priya Sharma', 'IT', 65000, 'Nashik', '2026-01-15', NULL, 'Active'),
(105, 'Sneha Joshi', 'Testing', 42000, 'Mumbai', '2024-11-05', 'sneha@company.com', 'Inactive'),
(106, 'Rohan Kulkarni', 'Support', 32000, 'Pune', '2025-07-12', NULL, 'Active'),
(107, 'Anjali Patil', 'Finance', 58000, 'Nagpur', '2026-02-01', 'anjali@company.com', 'Active'),
(108, 'Raj Mehta', 'IT', 72000, 'Mumbai', '2025-03-18', 'raj@company.com', 'Active'),
(109, 'Pooja Shah', 'HR', 35000, 'Pune', '2024-08-22', NULL, 'Inactive'),
(110, 'Sagar More', 'Sales', 48000, 'Nashik', '2025-09-10', 'sagar@company.com', 'Active'),
(111, 'Aarti Desai', 'IT', 50000, 'Pune', '2026-03-05', 'aarti@company.com', 'Active'),
(112, 'Ramesh Pawar', 'Testing', 39000, 'Mumbai', '2025-06-01', NULL, 'Inactive'),
(113, 'Shweta Kulkarni', 'Support', 30000, 'Nashik', '2024-12-15', 'shweta@company.com', 'Active'),
(114, 'Sachin Jadhav', 'Sales', 62000, 'Pune', '2026-01-20', 'sachin@company.com', 'Active'),
(115, 'Neha Joshi', 'HR', 41000, 'Nagpur', '2025-04-12', NULL, 'Active'),
(116, 'Akash Patil', 'IT', 75000, 'Pune', '2025-10-25', 'akash@company.com', 'Active'),
(117, 'Rashmi More', 'Testing', 36000, 'Mumbai', '2024-05-30', 'rashmi@company.com', 'Inactive'),
(118, 'Vikas Shah', 'Finance', 68000, 'Nashik', '2026-04-08', NULL, 'Active'),
(119, 'Smita Patil', 'Sales', 44000, 'Pune', '2025-11-11', 'smita@company.com', 'Active'),
(120, 'Ravi Deshmukh', 'IT', 90000, 'Mumbai', '2026-05-16', 'ravi@company.com', 'Active'),
(121, 'Sunita More', 'HR', 29000, 'Pune', '2024-03-19', NULL, 'Inactive'),
(122, 'Suresh Patil', 'Support', 34000, 'Nagpur', '2025-08-14', 'suresh@company.com', 'Active'),
(123, 'Rekha Sharma', 'Testing', 47000, 'Pune', '2026-06-10', 'rekha@company.com', 'Active'),
(124, 'Shilpa Joshi', 'Sales', 53000, 'Mumbai', '2025-12-01', NULL, 'Active'),
(125, 'Arjun Patil', 'IT', 60000, 'Pune', '2026-07-05', 'arjun@company.com', 'Active');

SELECT * FROM employees;

SELECT COUNT(*) AS total_employees
FROM employees;

SELECT *
FROM employees
WHERE city = 'Pune';

SELECT *
FROM employees
WHERE city='Mumbai';

SELECT * 
FROM employees
WHERE department='IT';

SELECT * 
FROM employees
WHERE department='HR';

SELECT * 
FROM employees
WHERE department='Sales';

SELECT * 
FROM employees
WHERE status='Active';

SELECT * 
FROM employees
WHERE status='Inactive';

SELECT * 
FROM employees
WHERE employee_id=103;

SELECT * 
FROM employees
WHERE employee_id=104;

SELECT * 
FROM employees
WHERE salary=35000;

SELECT * 
FROM employees
WHERE city!='pune';

SELECT * 
FROM employees 
WHERE department <> 'Testing';

SELECT * 
FROM employees
WHERE salary>=40000;

SELECT * 
FROM employees
WHERE salary<35000;

SELECT * 
FROM employees
WHERE salary>=50000;

SELECT * 
FROM employees
WHERE salary<=30000;

SELECT * 
FROM employees
WHERE joining_date>'2025-01-01';

SELECT * 
FROM employees
WHERE joining_date<='2024-12-31';

SELECT * 
FROM employees
WHERE employee_id>110;

SELECT * 
FROM employees
WHERE joining_date>='2026-01-01';

SELECT * 
FROM employees
WHERE city='Pune' AND status='Active';

SELECT * 
FROM employees
WHERE department='IT' AND salary>50000;

SELECT * 
FROM employees
WHERE city='Mumbai' AND status='Inactive';

SELECT *
FROM employees
WHERE department = 'Sales'
AND city = 'Pune'
 AND salary >= 42000;
 
 SELECT * 
FROM employees
WHERE department = 'HR' AND joining_date<='2025-06-01';

SELECT * 
FROM employees
WHERE status='Active' And salary Between 40000 AND 70000;
 
SELECT *
FROM employees
WHERE department = 'Testing'
AND city = 'Mumbai'
 AND salary > 38000;
 
  SELECT * 
FROM employees
WHERE status = 'Active' AND joining_date<='2026-01-01' AND salary >45000;
 
SELECT *
FROM employees
WHERE city = 'Pune' OR 'Mumbai';

SELECT *
FROM employees
WHERE department = 'IT' OR 'HR';

SELECT *
FROM employees
WHERE salary <= 32000 OR salary>60000;

SELECT *
FROM employees
WHERE city = 'Nashik' OR salary>55000;

SELECT *
FROM employees
WHERE NOT department='HR';

SELECT *
FROM employees
WHERE NOT status='Inactive';

SELECT *
FROM employees
WHERE (city = 'Pune' OR city = 'Mumbai')
  AND status = 'Active';
  
  SELECT *
FROM employees
WHERE city <> 'Pune'
  AND salary > 40000;

SELECT * FROM employees
WHERE salary BETWEEN 35000 AND 55000;

SELECT * FROM employees
WHERE salary NOT BETWEEN 40000 AND 65000;

SELECT * FROM employees
WHERE joining_date BETWEEN '2025-01-01' AND '2025-12-31';

SELECT * FROM employees
WHERE employee_id BETWEEN 105 AND 115;

SELECT * FROM employees
WHERE department IN ('IT', 'HR', 'Sales');

SELECT * FROM employees
WHERE city IN ('Pune', 'Mumbai', 'Nagpur');

SELECT * FROM employees
WHERE department NOT IN ('Testing', 'Support');

SELECT * FROM employees
WHERE city NOT IN ('Mumbai', 'Nashik');

SELECT * FROM employees
WHERE employee_id IN (101, 105, 110, 115, 120);

SELECT * FROM employees
WHERE department IN ('IT', 'Sales')
  AND salary BETWEEN 45000 AND 75000;

SELECT * FROM employees
WHERE employee_name LIKE 'A%';

SELECT * FROM employees
WHERE employee_name LIKE 'R%';

SELECT * FROM employees
WHERE employee_name LIKE '%a';

SELECT * FROM employees
WHERE name LIKE '%sh%';

SELECT * FROM employees
WHERE name LIKE 'P%a';

SELECT * FROM employees
WHERE employee_name LIKE '_____';

SELECT * FROM employees
WHERE employee_name LIKE '_a%';

SELECT * FROM employees
WHERE employee_name NOT LIKE 'R%';

SELECT * FROM employees
WHERE email IS NULL;

SELECT * FROM employees
WHERE email IS NOT NULL;

SELECT * FROM employees
WHERE city = 'Pune'
  AND email IS NULL;

SELECT * FROM employees
WHERE status = 'Active'
  AND email IS NOT NULL
  AND salary > 40000;

SELECT * FROM employees
WHERE status = 'Active'
  AND city IN ('Pune', 'Mumbai')
  AND department IN ('IT', 'Sales')
  AND salary BETWEEN 40000 AND 70000
  AND joining_date > '2025-01-01';

SELECT * FROM employees
WHERE (employee_name LIKE 'S%' OR employee_name LIKE 'R%')
  AND email IS NOT NULL
  AND status = 'Active'
  AND city IN ('Pune', 'Nashik');