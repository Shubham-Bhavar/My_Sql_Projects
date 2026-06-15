/*Table: Products

Find the IDs of products that are:

Low Fat (low_fats = 'Y')
Recyclable (recyclable = 'Y')

Return only product_id.*/
-- Select product IDs
SELECT product_id
FROM Products

-- Product must be low fat
WHERE low_fats = 'Y'

-- Product must be recyclable
AND recyclable = 'Y';
