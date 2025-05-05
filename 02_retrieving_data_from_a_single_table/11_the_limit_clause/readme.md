# SQL Query Examples: Using LIMIT Clause

This file demonstrates how to use the `LIMIT` clause in SQL to restrict the number of records returned from a query. The `LIMIT` clause is helpful for pagination and testing.

---

## 1. Select First 7 Customers

```sql
SELECT * 
FROM customers 
LIMIT 7;
```

### 💡 Explanation:
This query fetches the first 7 rows from the `customers` table.

### 🧾 Sample Output:
| customer_id | first_name | last_name | email              |
|-------------|------------|-----------|---------------------|
| 1           | Alice      | Smith     | alice@example.com   |
| 2           | Bob        | Johnson   | bob@example.com     |
| 3           | Charlie    | Brown     | charlie@example.com |
| 4           | Dana       | White     | dana@example.com    |
| 5           | Eva        | Green     | eva@example.com     |
| 6           | Frank      | Stone     | frank@example.com   |
| 7           | Grace      | Lee       | grace@example.com   |

---

## 2. Skip First 10 Customers and Show Next 3

```sql
SELECT *  
FROM customers 
LIMIT 10, 3;  -- Limit 10,3 means skip first 10 rows, then return next 3 rows (11th, 12th, 13th)
```

### 💡 Explanation:
- This query skips the first 10 rows of the result set.
- It then returns the next 3 rows.
- This is commonly used for pagination: `LIMIT offset, count`.

### 🧾 Sample Output:
| customer_id | first_name | last_name | email               |
|-------------|------------|-----------|----------------------|
| 11          | Nora       | King      | nora@example.com     |
| 12          | Oscar      | Hall      | oscar@example.com    |
| 13          | Paula      | Scott     | paula@example.com    |
