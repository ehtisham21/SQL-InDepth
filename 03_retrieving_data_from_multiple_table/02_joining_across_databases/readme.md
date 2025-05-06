# Cross-Database Joins

## 📘 Overview

Cross-database joins allow you to retrieve and combine data from tables located in different databases within the same **Database Management System (DBMS)**. This approach is especially useful when data is distributed across multiple databases but needs to be analyzed or reported together.

---

## 🧠 What Are Cross-Database Joins?

Cross-database joins are SQL operations that join tables from different databases. This technique helps integrate data from various sources, making it easier to perform comprehensive analysis.

---

## 🧾 Example Syntax

```sql
SELECT oi.product_id, quantity_in_stock
FROM order_items oi
INNER JOIN sql_inventory.products p
ON oi.product_id = p.product_id;
```

### Explanation:

- `sql_inventory`: Name of the **other** database.
- `order_items`, `products`: Tables to be joined.
- `product_id`: The common column used to join both tables.

---

## 🔗 How to Join Tables Across Databases

Let's assume:
- You have a database named `inventory`.
- Inside `inventory`, there's a table called `products`.
- You want to join it with the `orders_items` table located in your current database.

Here’s how you can perform the join:

```sql
SELECT * 
FROM orders_items oi
INNER JOIN inventory.products p
ON oi.product_id = p.product_id;
```

---

## ⚠️ Important Notes

- Not all DBMSs support cross-database joins.
- Support and syntax may vary depending on the system and its configuration.

### DBMS-Specific Support:

- **MySQL**: Cross-database joins are supported, but you must have permission to access both databases.
- **SQL Server**: You can use fully qualified names (e.g., `database.schema.table`) if the user has appropriate permissions.

---

## ✅ Summary

Cross-database joins are a powerful way to analyze data across separate databases within the same system. When properly configured and supported by your DBMS, they simplify data analysis by bridging isolated data sets.
