## Using BETWEEN Operator in SQL
================================

### Overview

The `BETWEEN` operator in SQL is used to select values within a given range. It is commonly used in `WHERE` clauses to filter data.

## SQL Queries
-------------

### Query: Using BETWEEN Operator

```sql
SELECT * 
FROM customers 
WHERE points BETWEEN 100 AND 200;
```

* **Purpose:** Retrieve customers with points between `100` and `200` (inclusive).
* **Evaluation:** The `points` value must be greater than or equal to `100` and less than or equal to `200`.

## Key Takeaways
------------------

* The `BETWEEN` operator is inclusive, meaning it includes the start and end values.
* The `BETWEEN` operator is often used for range queries.

## Best Practices
------------------

* Use `BETWEEN` when you need to select values within a specific range.
* Be aware that the `BETWEEN` operator is inclusive.

## Example Use Cases
---------------------

### Retrieve customers with a specific age range

```sql
SELECT * 
FROM customers 
WHERE age BETWEEN 25 AND 40;
```

### Retrieve products with a specific price range

```sql
SELECT * 
FROM products 
WHERE price BETWEEN 10.99 AND 29.99;
```

## Comparison with Other Operators
-------------------------------

### BETWEEN vs. AND

```sql
SELECT * 
FROM customers 
WHERE points >= 100 AND points <= 200;
```

* **Equivalent to:** `points BETWEEN 100 AND 200;`
* **Difference:** The `BETWEEN` operator is more concise and readable.

## When to Use BETWEEN
----------------------

* Use `BETWEEN` when you need to select values within a specific range.
* Use `BETWEEN` when you want to make your queries more readable and concise.

## Why Use BETWEEN
------------------

* **Readability:** `BETWEEN` makes your queries more readable by clearly indicating a range.
* **Conciseness:** `BETWEEN` is more concise than using separate conditions with `AND`.

## Additional Tips
-------------------

* Be aware of the data type of the column you are querying. `BETWEEN` works differently with date and time columns.
* Use `NOT BETWEEN` to select values outside a specific range.

## NOT BETWEEN Operator
----------------------

```sql
SELECT * 
FROM customers 
WHERE points NOT BETWEEN 100 AND 200;
```

* **Purpose:** Retrieve customers with points outside the range of `100` to `200` (exclusive).

## Summary
----------

| Operator | Purpose | Example |
| --- | --- | --- |
| `BETWEEN` | Select values within a range | `points BETWEEN 100 AND 200` |
| `AND` | Combine conditions | `points >= 100 AND points <= 200` |