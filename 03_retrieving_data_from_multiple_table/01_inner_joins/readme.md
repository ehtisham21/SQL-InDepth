# 📘 SQL INNER JOIN Examples

This section demonstrates how to use `INNER JOIN` in SQL to combine data from the `orders` and `customers` tables based on a shared column: `customer_id`.

---

## 🔹 Example 1: Join and Select Specific Columns

```sql
SELECT order_id, orders.customer_id, first_name, phone, city
FROM orders
INNER JOIN customers
ON orders.customer_id = customers.customer_id;
```

### 🔍 Explanation:
- Retrieves order details along with the corresponding customer's `first_name`, `phone`, and `city`.
- The `orders.customer_id` is included to show the linking column.

---

## 🔹 Example 2: Join and Select All Columns

```sql
SELECT *
FROM orders
INNER JOIN customers
ON orders.customer_id = customers.customer_id;
```

### 🔍 Explanation:
- Selects **all columns** from both `orders` and `customers` where `customer_id` matches.
- Good for debugging or inspecting full records, but not recommended for production queries.

---

## 🔹 Example 3: Using Table Aliases (o, c)

```sql
SELECT order_id, o.customer_id, first_name, phone, city
FROM orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id;
```

### 🔍 Explanation:
- Same as Example 1, but uses **aliases**:
  - `o` for `orders`
  - `c` for `customers`
- Makes queries cleaner and easier to write, especially in large queries with multiple joins.

---

## ✅ Summary

| Query Style         | Description                                  |
|---------------------|----------------------------------------------|
| Select specific     | Picks only needed columns                    |
| Select all (`*`)    | Shows all columns from both tables           |
| Use of aliases      | Shortens table names for cleaner queries     |

All three queries use `INNER JOIN`, which means:
- Only rows with matching `customer_id` in both `orders` and `customers` will be shown.

