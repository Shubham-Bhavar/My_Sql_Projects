--Find all duplicate email addresses.


-- Group same emails together
SELECT email
FROM Person
GROUP BY email

-- Keep emails appearing more than once
HAVING COUNT(email) > 1;
