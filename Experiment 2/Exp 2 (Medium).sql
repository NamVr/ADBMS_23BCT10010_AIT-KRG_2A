CREATE DATABASE EXP2;
USE EXP2;

CREATE TABLE TBL_Employee (
	ID INT PRIMARY KEY IDENTITY(1,1),
	Name VARCHAR(50),
	Department VARCHAR(50),
	Manager_ID INT FOREIGN KEY REFERENCES TBL_Employee(ID)
);

INSERT INTO TBL_Employee (Name, Department, Manager_ID) VALUES
('John Smith', 'Executive', NULL),
('Jane Doe', 'Human Resources', 1),
('Peter Jones', 'Engineering', 1),
('Mary Williams', 'Sales', 1),
('Mark Johnson', 'Engineering', 3),
('Laura Brown', 'Human Resources', 2),
('Chris Miller', 'Sales', 4),
('Sarah Davis', 'Engineering', 3);

-- Select a list of all employees with their corresponding managers.
SELECT
	E1.Name, E1.Department, E2.Name, E2.Department
FROM
	TBL_Employee AS E1
LEFT OUTER JOIN
	TBL_Employee AS E2
ON
	E1.Manager_ID = E2.ID;