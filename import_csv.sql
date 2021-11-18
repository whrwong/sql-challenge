COPY employees(EmployeeNumber,
EmployeeTitleID,
BirthDate,
FirstName,
LastName,
Sex,
HireDate)
FROM '/Users/whitneywong/Desktop/Data Bootcamp/SQL Assignment/employees.csv'
DELIMITER ','
CSV HEADER;