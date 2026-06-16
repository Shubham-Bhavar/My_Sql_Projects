/*
Question:
Find movies that:
1. Have an odd ID
2. Are not boring

Return all columns.
*/

-- Select all movie details
SELECT *
FROM Cinema

-- Movie ID should be odd
WHERE id % 2 = 1

-- Description should not be boring
AND description <> 'boring'

-- Sort by rating in descending order
ORDER BY rating DESC;
