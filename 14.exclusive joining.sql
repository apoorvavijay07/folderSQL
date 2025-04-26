USE ecom;
SELECT* FROM customers;
SELECT* FROM orders;
-- left outer join
SELECT*
FROM customers
LEFT JOIN orders
ON customers.id=orders.id
WHERE orders.id is NULL;
-- right outer join
SELECT*
FROM customers
RIGHT JOIN orders
ON customers.id=orders.id
 WHERE customers.id is NULL;
 
 -- full exclusive join
 SELECT*
 FROM customers
LEFT JOIN orders
ON customers.id=orders.id
 WHERE orders.id is NULL
 UNION
 SELECT*
 FROM customers
RIGHT JOIN orders
ON customers.id=orders.id
 WHERE customers.id is NULL;
 
 -- UNION
 SELECT id FROM customers
 UNION
 SELECT id FROM orders;
 
 -- UNION ALL
 SELECT id FROM customers
 UNION ALL
 SELECT id FROM orders;
