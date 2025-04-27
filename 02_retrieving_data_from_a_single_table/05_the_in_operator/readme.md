## Difference between OR and IN Operators
=====================================

### Overview

SQL provides various operators to filter data based on conditions. Two commonly used operators are `OR` and `IN`. Understanding the difference between them can help you write more efficient and readable queries.

### OR Operator
-------------

* The `OR` operator checks multiple conditions separately.
* Returns `TRUE` if at least one condition is `TRUE`.

### IN Operator
-------------

* The `IN` operator checks if a value exists within a list.
* Returns `TRUE` if the value is found in the list.

## SQL Queries
-------------

### Query1: Using OR Operator

```sql
SELECT *
 FROM customers
 WHERE birth_date > '2023-08-07' OR points >1500;
```

* **Purpose:** Retrieve customers born after `August7,2023`, or with more than `1500` points.
* **Evaluation:** Two separate conditions are evaluated.

### Query2: Using IN Operator

```sql
SELECT *  
 FROM customers 
 WHERE city IN ('Chicago','California');
```

* **Purpose:** Retrieve customers from either `Chicago` or `California`.
* **Evaluation:** The `city` value is checked against the list.

### Query3: Using NOT IN Operator

```sql
SELECT *  
 FROM customers  
 WHERE city NOT IN ('ISB','RWP'); 
```

* **Purpose:** Retrieve customers not from `ISB` or `RWP`.
* **Evaluation:** The `city` value is checked against the list, and returns `TRUE` if not found.

## Key Takeaways
------------------

* Use `OR` when checking multiple conditions separately.
* Use `IN` when checking if a value exists within a list.
* The `IN` operator can make queries shorter and cleaner.

## Best Practices
------------------

* Use `IN` when dealing with a large list of values.
* Be cautious when using `NOT IN`, as it may not work as expected if the list contains `NULL` values.

## Example Use Cases
---------------------

### Retrieve customers from specific cities

```sql
SELECT *  
 FROM customers 
 WHERE city IN ('New York','Los Angeles','Chicago');
```

### Retrieve customers not from specific countries

```sql
SELECT *  
 FROM customers  
 WHERE country NOT IN ('USA','Canada');
```

## Comparison Summary
--------------------

| Operator | Purpose | Example |
| --- | --- | --- |
| `OR` | Check multiple conditions separately | `birth_date > '2023-08-07' OR points >1500` |
| `IN` | Check if a value exists within a list | `city IN ('Chicago','California')` |