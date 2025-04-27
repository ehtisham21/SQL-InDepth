SELECT first_name, last_name, points, city, (points + 10) * 100 AS discount_factor
FROM customers;

#DISTINCT is used to get only unique values
SELECT DISTINCT city
FROM customers;

#Multiplication and Division Operators have more precedence then addition or subtraction operators. Also if any operator has small brackets () it will have more precedence and get evaluated first