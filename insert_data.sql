INSERT INTO Departments(DepartmentNumber, DepartmentName)
VALUES('d001', 'Marketing'),
	   ('d002',  'Finance'),
	   ('d003',	'Human Resources'),
	   ('d004',	'Production'),
	   ('d005',	'Development'),
	   ('d006',	'Quality Management'),
	   ('d007',	'Sales'),
	   ('d008',	'Research'),
   	   ('d009',	'Customer Service');

-- TRUNCATE table Departments;
	   
SELECT * FROM Departments;

INSERT INTO Titles(TitleID, Title)
VALUES ('s0001', 'Staff'),
	   ('s0002', 'Senior Staff'),
	   ('e0001', 'Assistant Engineer'),
	   ('e0002', 'Engineer'),
	   ('e0003', 'Senior Engineer'),
	   ('e0004', 'Technique Leader'),
	   ('m0001', 'Manager');
	   
SELECT * FROM Titles;

INSERT INTO DepartmentManager(DepartmentNumber, EmployeeNumber)
VALUES ('d001', '110022'),
('d001', '110039'),
('d002', '110085'),
('d002', '110114'),
('d003', '110183'),
('d003', '110228'),
('d004', '110303'),
('d004', '110344'),
('d004', '110386'),
('d004', '110420'),
('d005', '110511'),
('d005', '110567'),
('d006', '110725'),
('d006', '110765'),
('d006', '110800'),
('d006', '110854'),
('d007', '111035'),
('d007', '111133'),
('d008', '111400'),
('d008', '111534'),
('d009', '111692'),
('d009', '111784'),
('d009', '111877'),
('d009', '111939');

SELECT * FROM DepartmentManager;

SELECT * FROM DepartmentEmployee;
	 