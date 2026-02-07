CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(30),
    Location VARCHAR(30)
);
INSERT INTO Departments VALUES
(1, 'IT', 'Bangalore'),
(2, 'HR', 'Mumbai'),
(3, 'Sales', 'Delhi'),
(4, 'Finance', 'Pune'),
(5, 'Operations', 'Chennai');

CREATE TABLE employ (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    DepartmentID INT,
    Salary INT,
    City VARCHAR(30)
);

INSERT INTO employ VALUES
(101, 'Amit', 1, 60000, 'Delhi'),
(102, 'Riya', 2, 70000, 'Mumbai'),
(103, 'Kunal', 1, 55000, 'Pune'),
(104, 'Neha', 3, 45000, 'Delhi'),
(105, 'Rahul', 1, 80000, 'Bangalore'),
(106, 'Sneha', 2, 40000, 'Mumbai'),
(107, 'Arjun', 3, 75000, 'Pune'),
(108, 'Priya', NULL, 50000, 'Delhi'),
(109, 'Vikas', 3, 48000, 'Mumbai'),
(110, 'Anita', 4, 90000, 'Bangalore');

CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(40),
    DepartmentID INT
);

INSERT INTO Projects VALUES
(201, 'AI Platform', 1),
(202, 'HR Automation', 2),
(203, 'Sales Tracker', 3),
(204, 'Finance Audit', 4),
(205, 'Cloud Migration', 1),
(206, 'Customer Ops', NULL);


SELECT * FROM Departments
SELECT * FROM Projects
SELECT * FROM employ