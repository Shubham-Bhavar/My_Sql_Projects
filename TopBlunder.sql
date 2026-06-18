/*
Calculate the difference between:
1. Actual average salary
2. Average salary after removing all zeros

Round the result up to the next integer.
*/

SELECT CEIL(

    -- Actual average salary
    AVG(Salary)

    -

    -- Samantha's average salary (all 0's removed)
    AVG(REPLACE(Salary, '0', ''))

) AS Error
FROM EMPLOYEES;
