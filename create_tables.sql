DROP TABLE Employees;
CREATE TABLE Employees(
EmployeeNumber INT PRIMARY KEY,
EmployeeTitleID VARCHAR,
	FOREIGN KEY (EmployeeTitleID) REFERENCES Titles(TitleID),
BirthDate date,
FirstName VARCHAR(30) Not NULL,
LastName VARCHAR(30) Not NULL,
Sex VARCHAR(2) Not NULL,
HireDate date);

-- Table schema for the junction table
CREATE TABLE child_parent (
  child_id INTEGER NOT NULL,
  FOREIGN KEY (child_id) REFERENCES children(child_id),
  parent_id INTEGER NOT NULL,
  FOREIGN KEY (parent_id) REFERENCES parents(parent_id),
  PRIMARY KEY (child_id, parent_id)
);

-- DROP TABLE Titles;
CREATE TABLE Titles(
TitleID VARCHAR(5) Not NULL PRIMARY KEY,
Title VARCHAR(30) Not NULL);

-- DROP TABLE Salaries;
CREATE TABLE Salaries(
EmployeeNumber INT,
	FOREIGN KEY (EmployeeNumber) REFERENCES Employees(EmployeeNumber),
Salary INT);

-- DROP TABLE DepartmentEmployee;
CREATE TABLE DepartmentEmployee(
EmployeeNumber INT,
	FOREIGN KEY (EmployeeNumber) REFERENCES Employees(EmployeeNumber),
DepartmentNumber VARCHAR(4) Not NULL
	FOREIGN KEY (DepartmentNumber) REFERENCES Departments(DepartmentNumber);

-- DROP TABLE Departments;
CREATE TABLE Departments(
DepartmentNumber VARCHAR(4) Not NULL,
DepartmentName VARCHAR(30) Not NULL);

-- DROP TABLE DepartmentManager;
CREATE TABLE DepartmentManager(
DepartmentNumber VARCHAR(4) Not NULL,
	FOREIGN KEY (DepartmentNumber) REFERENCES Departments(DepartmentNumber),
EmployeeNumber INT, 
	FOREIGN KEY (EmployeeNumber) REFERENCES Employees(EmployeeNumber)
	);

COPY persons(first_name, last_name, dob, email)
FROM 'C:\sampledb\persons.csv'
DELIMITER ','
CSV HEADER;