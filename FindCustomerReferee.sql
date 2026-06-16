/*
Question:
Find customer names whose referee_id
is NOT equal to 2.

Also include customers with NULL referee_id.
*/

-- Select customer names
SELECT name
FROM Customer

-- Referee should not be 2
WHERE referee_id <> 2

-- Include NULL referee_id
OR referee_id IS NULL;
