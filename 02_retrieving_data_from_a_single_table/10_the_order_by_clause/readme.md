# SQL Query Examples

This file contains examples of SQL queries for retrieving and sorting customer data from a `customers` table. It also includes an explanation of how comments work in SQL.

---

## 1. Select All Customers Ordered by First Name (Ascending)

```sql
SELECT *
FROM customers
ORDER BY first_name;
```

### 💡 Explanation:
This query retrieves all columns (`*`) from the `customers` table and sorts the results alphabetically by the `first_name` column in ascending order (A to Z by default).

### 🧾 Sample Output:
| customer_id | first_name | last_name | email              |
|-------------|------------|-----------|---------------------|
| 2           | Alice      | Smith     | alice@example.com   |
| 5           | Bob        | Johnson   | bob@example.com     |
| 1           | Charlie    | Brown     | charlie@example.com |

---

## 2. Select All Customers Ordered by First Name (Descending) and Last Name (Ascending)

```sql
SELECT *
FROM customers
ORDER BY first_name DESC, last_name ASC;
```

### 💡 Explanation:
This query retrieves all customers and sorts them:
- `first_name` in descending order (Z to A),
- If `first_name` values are the same, it further sorts by `last_name` in ascending order.

### 🧾 Sample Output:
| customer_id | first_name | last_name | email                  |
|-------------|------------|-----------|-------------------------|
| 4           | Zoe        | Adams     | zoe@example.com         |
| 3           | Zoe        | Monroe    | zoe.monroe@example.com  |
| 1           | Charlie    | Brown     | charlie@example.com     |

---

## 3. Select Customers from `mydb` Database with a Commented WHERE Clause

```sql
USE mydb;

SELECT *
FROM customers
-- WHERE customer_id = 5  "--" Double Hyphen is used to comment something.
ORDER BY first_name;
```

### 💡 Explanation:
- `USE mydb;`: Sets the current database context to `mydb`.
- The `WHERE` clause is commented out using `--`, so **it will not be executed**.
- The query retrieves all customers and sorts them by `first_name`.

### 💬 Note:
- `--` (double hyphen) is used to comment out a single line in SQL.

### 🧾 Sample Output:
(Same as the output of the first query since the `WHERE` clause is ignored.)

| customer_id | first_name | last_name | email              |
|-------------|------------|-----------|---------------------|
| 2           | Alice      | Smith     | alice@example.com   |
| 5           | Bob        | Johnson   | bob@example.com     |
| 1           | Charlie    | Brown     | charlie@example.com |
