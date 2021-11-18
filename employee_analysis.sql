-- List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT emp.EmployeeNumber, LastName, FirstName, Sex, sal.Salary
from Employees AS emp
LEFT JOIN Salaries as sal ON emp.EmployeeNumber = sal.EmployeeNumber
;

-- List first name, last name, and hire date for employees who were hired in 1986.

SELECT FirstName, LastName, HireDate
from Employees
where HireDate >= '1986-01-01' AND HireDate <= '1986-12-31';

SELECT * FROM Employees;

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT dep.DepartmentNumber, dep.DepartmentName, man.EmployeeNumber, man.LastName, man.FirstName
from Departments as dep
LEFT JOIN DepartmentManager as dm ON dep.DepartmentNumber = dm.DepartmentNumber
LEFT JOIN Employees as man ON dm.EmployeeNumber = man.EmployeeNumber;


-- List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT emp.EmployeeNumber, emp.LastName, emp.FirstName, dep.DepartmentName
from Departments as dep
LEFT JOIN DepartmentEmployee as de ON dep.DepartmentNumber = de.DepartmentNumber
LEFT JOIN Employees as emp ON de.EmployeeNumber = emp.EmployeeNumber;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT FirstName, LastName, Sex
from Employees
where FirstName = 'Hercules' AND Left(LastName, 1) = 'B';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT emp.EmployeeNumber, emp.LastName, emp.FirstName, dep.DepartmentName
from Departments as dep
LEFT JOIN DepartmentEmployee as de ON dep.DepartmentNumber = de.DepartmentNumber
LEFT JOIN Employees as emp ON de.EmployeeNumber = emp.EmployeeNumber
where dep.DepartmentName = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT emp.EmployeeNumber, emp.LastName, emp.FirstName, dep.DepartmentName
from Departments as dep
LEFT JOIN DepartmentEmployee as de ON dep.DepartmentNumber = de.DepartmentNumber
LEFT JOIN Employees as emp ON de.EmployeeNumber = emp.EmployeeNumber
where dep.DepartmentName = 'Sales' OR dep.DepartmentName = 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT LastName, count(LastName) as freq
from Employees 
group by LastName
order by freq DESC;