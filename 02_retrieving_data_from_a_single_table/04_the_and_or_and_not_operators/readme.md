## Operator Precedence and Logical Operators in SQL
===========================================================

### Overview

SQL uses logical operators to combine conditions in `WHERE` clauses. Understanding operator precedence and the behavior of logical operators is crucial for writing effective and accurate SQL queries.

### Operator Precedence
------------------------

* The `AND` operator has higher precedence than the `OR` operator.
* When using parentheses `()`, the conditions within them are evaluated first.

### Logical Operators
----------------------

### AND Operator

* The `AND` operator returns `TRUE` if both conditions are `TRUE`.
* Example: `condition1 AND condition2`

### OR Operator

* The `OR` operator returns `TRUE` if at least one condition is `TRUE`.
* Example: `condition1 OR condition2`

### NOT Operator

* The `NOT` operator negates a condition, i.e., returns `TRUE` if the condition is `FALSE` and vice versa.
* Example: `NOT condition`

## SQL Queries
-------------

### Query1: Using AND Operator

```sql
SELECT *
 FROM customers
 WHERE birth_date > '2023-08-07' AND points >1500;
```

* **Purpose:** Retrieve customers born after `August 7, 2023`, and with more than `1500` points.
* **Evaluation:** Both conditions must be `TRUE`.

### Query2: Using OR Operator

```sql
SELECT *
 FROM customers
 WHERE birth_date > '2023-08-07' OR points >1500;
```

* **Purpose:** Retrieve customers born after `August 7, 2023`, or with more than `1500` points.
* **Evaluation:** At least one condition must be `TRUE`.

### Query3: Using NOT Operator

```sql
SELECT *
 FROM customers
 WHERE NOT(birth_date > '2023-08-07' OR points >1500);
```

* **Purpose:** Retrieve customers who do not meet the conditions: born after `August 7, 2023`, or with more than `1500` points.
* **Evaluation:** The `NOT` operator negates the result of the `OR` condition.

### Query4: Using Parentheses for Precedence

```sql
SELECT *
 FROM customers
 WHERE birth_date > '2023-08-07' OR (points >1500 AND city = 'Chicago');
```

* **Purpose:** Retrieve customers born after `August 7, 2023`, or with more than `1500` points and living in `Chicago`.
* **Evaluation:** The `AND` condition within the parentheses is evaluated first.

## Key Takeaways
------------------

* Understand operator precedence to write accurate SQL queries.
* Use parentheses to control the evaluation order of conditions.
* The `NOT` operator negates a condition.

## Best Practices
------------------

* Use parentheses to clarify complex conditions.
* Test queries with sample data to ensure correct results.

## Example Use Cases
---------------------

### Retrieve customers who are eligible for a premium service

```sql
SELECT *
 FROM customers
 WHERE points >2000 AND city = 'New York';
```

### Retrieve customers who have not placed an order in the last 6 months

```sql
SELECT *
 FROM customers
 WHERE NOT(last_order_date > '2023-02-01');
```