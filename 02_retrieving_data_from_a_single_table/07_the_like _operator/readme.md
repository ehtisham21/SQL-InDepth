**Using SQL Wildcards: LIKE Operator**
=====================================

The SQL `LIKE` operator is used to search for a specified pattern in a column. In this explanation, we'll explore how to use wildcards with the `LIKE` operator to filter data from the `customers` table.

**Wildcards**
------------

* `_` (underscore): represents exactly one character
* `%` (percent sign): represents any number of characters (including zero)

**Examples**
-----------

### 1. Find customers with last name starting with 'f'

```sql
SELECT *
FROM customers
WHERE last_name LIKE 'f%';
```

* This query returns all rows where the `last_name` starts with 'f' and has any number of characters after it.

### 2. Find customers with last name starting with 'alex'

```sql
SELECT *
FROM customers
WHERE last_name LIKE 'alex%';
```

* This query returns all rows where the `last_name` starts with 'alex' and has any number of characters after it.

### 3. Find customers with last name having exactly 3 characters and ending with 's'

```sql
SELECT *
FROM customers
WHERE last_name LIKE '__s';
```

* The two underscores `_` represent exactly two characters (since one character is represented by the 's' at the end).
* This query returns all rows where the `last_name` has exactly three characters and ends with 's'.

### 4. Find customers with last name having 'a', one character, 'x'

```sql
SELECT *
FROM customers
WHERE last_name LIKE 'a__x';
```

* This query returns all rows where the `last_name` starts with 'a', has exactly one character in the middle, and ends with 'x'.

### 5. Find customers with last name starting with 's', having 3 characters, and ending with 'h'

```sql
SELECT *
FROM customers
WHERE last_name LIKE 's___h';
```

* This query returns all rows where the `last_name` starts with 's', has exactly three characters in the middle, and ends with 'h'.

### 6. Find customers with last name not matching the pattern 's___h'

```sql
SELECT *
FROM customers
WHERE last_name NOT LIKE 's___h';
```

* This query returns all rows where the `last_name` does not match the pattern 's___h' (i.e., does not start with 's', have exactly three characters in the middle, and end with 'h').

**Best Practices**
-----------------

* Use the `LIKE` operator with wildcards to filter data based on patterns.
* Use `_` to represent exactly one character and `%` to represent any number of characters.
* Be cautious when using the `NOT LIKE` operator, as it can return unexpected results if the pattern is not well-defined.