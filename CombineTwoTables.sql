/*Combine the Person and Address tables.

Return:

firstName
lastName
city
state

Show all persons even if they do not have an address.*/
-- Get person details with address information
SELECT p.firstName,
       p.lastName,
       a.city,
       a.state
FROM Person p

-- Keep all persons even if address is missing
LEFT JOIN Address a
ON p.personId = a.personId;
