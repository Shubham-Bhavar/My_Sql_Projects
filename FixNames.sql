/*
Question:
Capitalize first letter and
make remaining letters lowercase.
*/

SELECT user_id,
CONCAT(
    UPPER(LEFT(name,1)),
    LOWER(SUBSTRING(name,2))
) AS name
FROM Users
ORDER BY user_id;
