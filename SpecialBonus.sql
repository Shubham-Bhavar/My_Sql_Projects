/*
Question:
Give 100% bonus if:
1. Employee ID is odd
2. Name does not start with 'M'

Otherwise bonus = 0
*/

-- Select employee id
SELECT employee_id,

-- Calculate bonus
IF(employee_id % 2 = 1
AND name NOT LIKE 'M%',
salary, 0) AS bonus

FROM Employees

-- Sort by employee id
ORDER BY employee_id;
