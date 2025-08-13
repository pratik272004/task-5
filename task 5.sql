-- 1. Create Departments table
CREATE TABLE Dept (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);

-- 2. Create Employees table with foreign key to Departments
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    salary DECIMAL(10, 2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Dept(dept_id)
);
 select * from Dept;
 
 select * from Employees;

 INSERT INTO Dept (dept_id, dept_name, location) VALUES
(1, 'HR', 'New York'),
(2, 'IT', 'San Francisco'),
(3, 'Finance', 'Chicago'),
(4, 'Marketing', 'Boston');

INSERT INTO Employees (emp_id, emp_name, position, salary, dept_id) VALUES
(101, 'Alice', 'HR Manager', 60000, 1),
(102, 'Bob', 'Recruiter', 45000, 1),
(103, 'Charlie', 'Software Engineer', 75000, 2),
(104, 'David', 'Accountant', 50000, 3),
(105, 'Eve', 'Sales Executive', 55000, NULL);  -- No department assigned

-- using inner join
SELECT e.emp_id, e.emp_name, d.dept_name
FROM Employees e
INNER JOIN Dept  d ON e.dept_id = d.dept_id;

--left join
SELECT e.emp_id, e.emp_name, d.dept_name
FROM Employees e
LEFT JOIN Dept  d ON e.dept_id = d.dept_id;

--right join
SELECT e.emp_id, e.emp_name, d.dept_name
FROM Employees e
RIGHT JOIN Departments d ON e.dept_id = d.dept_id;


---using full join
SELECT e.emp_id, e.emp_name, d.dept_name
FROM Employees e
FULL JOIN Dept d ON e.dept_id = d.dept_id;


