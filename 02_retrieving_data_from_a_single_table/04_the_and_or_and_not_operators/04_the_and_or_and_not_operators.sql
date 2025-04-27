#AND Operator has more precedence then OR operator. Also if any operator has small brackets () it will have more precedence and get evaluated first.
#The NOT operator in SQL means "the opposite". If a condition is TRUE, NOT makes it FALSE. If a condition is FALSE, NOT makes it TRUE.


 SELECT *
 FROM customers
 WHERE birth_date > '2023-08-07' AND points > 1500;

 SELECT *
 FROM customers
 WHERE birth_date > '2023-08-07' OR points > 1500;

  SELECT *
 FROM customers
 WHERE NOT(birth_date > '2023-08-07' OR points > 1500);

  SELECT *
 FROM customers
 WHERE birth_date > '2023-08-07' OR (points > 1500 AND city = 'Chicago');



