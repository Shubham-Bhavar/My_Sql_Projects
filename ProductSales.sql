/*
Question:
Get product name, year and price.
*/

-- Select required columns
SELECT product_name, year, price
FROM Sales

-- Join Product table
JOIN Product
ON Sales.product_id = Product.product_id;
