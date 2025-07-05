# SQL Advanced Queries - ALX Airbnb Database

This project demonstrates advanced SQL query techniques using joins, subqueries, aggregations, and window functions in the context of an Airbnb-like relational database.

## Files

- **joins_queries.sql**: Demonstrates various types of joins
  - `INNER JOIN`: Bookings with Users
  - `LEFT JOIN`: Properties with Reviews (includes properties without reviews)
  - `FULL OUTER JOIN`: Users and Bookings (emulated in MySQL with `UNION`)

- **subqueries.sql**: Contains examples of subqueries
  - **Non-Correlated Subquery**: Find properties with average rating > 4.0
  - **Correlated Subquery**: Find users who have made more than 3 bookings

- **aggregations_and_window_functions.sql**: Demonstrates use of aggregation and window functions
  - `COUNT` + `GROUP BY`: Total bookings per user
  - `RANK() OVER(...)`: Ranking properties by total bookings

## Objectives

- Understand and apply SQL `JOIN` operations
- Write both **correlated** and **non-correlated** subqueries
- Use **aggregate functions** (`COUNT`, `AVG`, `SUM`, etc.)
- Apply **window functions** like `RANK()` and `ROW_NUMBER()`

## Usage

Run the SQL queries in a MySQL-compatible SQL client (e.g., MySQL Workbench, DBeaver, or CLI).  
Modify table or column names if your schema differs from the assumed structure.
