**SQL Query Examples README**
=====================================

Table of Contents
-----------------

* [Overview](#overview)
* [Database Selection](#database-selection)
* [Basic Queries](#basic-queries)
* [Filtering Data](#filtering-data)
* [Sorting Data](#sorting-data)
* [Comments in SQL](#comments-in-sql)

### Overview

This README provides examples of basic SQL queries using the `sql_store` database. The queries demonstrate how to select data, filter data, and sort data.

### Database Selection

To start working with the database, we need to select it using the `USE` statement:

```sql
USE sql_store;
```

### Basic Queries

The following queries demonstrate how to select all columns and specific columns from the `customers` table:

```sql
-- Select all columns from the customers table
SELECT * FROM customers;

-- Select specific columns from the customers table
SELECT first_name, last_name FROM customers;
```

### Filtering Data

To filter data based on a specific condition, we can use the `WHERE` clause:

```sql
-- Select specific columns from the customers table where customer_id = 1
SELECT first_name, last_name FROM customers WHERE customer_id = 1;
```

### Sorting Data

To sort data in ascending or descending order, we can use the `ORDER BY` clause:

```sql
-- Select all columns from the customers table and sort by first_name
SELECT *
FROM customers
ORDER BY first_name;
```

### Comments in SQL

In SQL, comments can be added using the `--` symbol. Anything written after `--` on the same line is ignored by the database:

```sql
-- This is a comment
SELECT * FROM customers; -- This is also a comment
```

Example Use Cases
-----------------

* Use the `USE` statement to select a database before running queries.
* Use the `SELECT` statement to retrieve data from a table.
* Use the `WHERE` clause to filter data based on specific conditions.
* Use the `ORDER BY` clause to sort data in ascending or descending order.
* Use comments to add notes to your queries and make them more readable.