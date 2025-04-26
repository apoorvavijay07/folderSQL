USE ecom;

DELIMITER /
CREATE PROCEDURE getordersdetails()
BEGIN 
SELECT*FROM orders;
END/

DELIMITER ;
CALL getordersdetails();

