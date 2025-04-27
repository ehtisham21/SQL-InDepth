#Difference between OR and In Operator
#OR checks multiple conditions separately, while IN checks if a value exists within a list, making queries shorter and cleaner.

#With OR Operator
 SELECT *
 FROM customers
 WHERE birth_date > '2023-08-07' OR points > 1500;

 #With IN Operator
 SELECT *
 FROM customers
 WHERE city IN ('Chicago','California');


 SELECT *
 FROM customers
 WHERE city NOT IN ('ISB','RWP');

