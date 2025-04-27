 SELECT *
 FROM customers
 WHERE last_name LIKE 'f%';

  SELECT *
 FROM customers
 WHERE last_name LIKE 'alex%';

  SELECT *
 FROM customers
 WHERE last_name LIKE '__s' # three characters that end with s

   SELECT *
 FROM customers
 WHERE last_name LIKE 'a__x'

  SELECT *
 FROM customers
 WHERE last_name LIKE 's___h'

  SELECT *
 FROM customers
 WHERE last_name NOT LIKE 's___h' # five characters that start with s and end with h


#NOTE: HERE _ (underscore) means exactly one character and % means any number of characters
