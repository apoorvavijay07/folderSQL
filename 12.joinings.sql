CREATE DATABASE ecom;
USE ecom;

CREATE TABLE customers(
id INT PRIMARY KEY,
name VARCHAR(10)); 

INSERT INTO customers(id,name)
VALUES( 1,"raj"),
       (2,"ram"),
       (3,"jio"),
       (4,"abhi"),
       (5,"san");
       
SELECT*FROM customers;

CREATE TABLE orders(
id INT ,
orders VARCHAR(10)); 

SELECT*FROM orders;

  
INSERT INTO orders(id,orders)
VALUES( 11,"fruits"),
       (2,"biscuits"),
       (3,"cakes"),
       (4,"books"),
       (15,"choclates");
       
	-- INNER JOINING
    SELECT customers.id,customers.name,orders.orders
    FROM customers
    INNER JOIN orders
    ON customers.id=orders.id;
    
    -- left join
     SELECT *
    FROM customers
    left JOIN orders
    ON customers.id=orders.id;
    -- right join
     SELECT *
    FROM customers
    right JOIN orders
    ON customers.id=orders.id;
    
    -- FULL JOIN
     SELECT customers.id,customers.name,orders.orders
    FROM customers
    LEFT JOIN orders
    ON customers.id=orders.id
    
     UNION
     
	SELECT customers.id,customers.name,orders.orders
    FROM customers
    RIGHT JOIN orders
    ON customers.id=orders.id;
    
    -- cross join
    SELECT customers.id,customers.name,orders.orders
    FROM customers
    CROSS JOIN orders ;
    ---
    SELECT customers.id,customers.name,orders.orders
    FROM customers
    CROSS JOIN orders 
    ORDER BY customers.id;