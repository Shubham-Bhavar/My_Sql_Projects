/*Find employees whose salary is greater than their manager's salary.

Return employee names.*/
-- e1 = Employee
-- e2 = Manager
SELECT e1.name AS Employee
FROM Employee e1

-- Join employee with manager
JOIN Employee e2
ON e1.managerId = e2.id

-- Employee salary greater than manager salary
WHERE e1.salary > e2.salary;
