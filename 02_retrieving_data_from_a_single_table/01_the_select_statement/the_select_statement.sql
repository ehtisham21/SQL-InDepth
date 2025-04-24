USE sql_store;

SELECT * FROM customers;

SELECT first_name,last_name FROM customers;

SELECT first_name,last_name FROM customers WHERE customer_id =1;

SELECT *
FROM customers
-- WHERE customer_id =1;  To add comment use this --
ORDER BY first_name;