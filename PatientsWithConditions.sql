/*
Question:
Find all patients whose conditions
contain 'DIAB1'.
*/

SELECT *
FROM Patients
WHERE conditions LIKE '%DIAB1%';
