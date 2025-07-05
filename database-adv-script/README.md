# SQL Join and Subquery Practice - ALX Airbnb Database

This project demonstrates advanced SQL query techniques using different types of joins and subqueries in the context of an Airbnb-like relational database.

## Files

- **joins_queries.sql**: Contains three join queries:
  - `INNER JOIN`: Bookings with Users
  - `LEFT JOIN`: Properties with Reviews (includes properties without reviews)
  - `FULL OUTER JOIN`: Users and Bookings (emulated in MySQL with `UNION`)

- **subqueries.sql**: Contains two subquery examples:
  - **Non-Correlated Subquery**: Find properties where the average rating is greater than 4.0
  - **Correlated Subquery**: Find users who have made more than 3 bookings

## Objectives

- Understand and apply `INNER JOIN`, `LEFT JOIN`, and `FULL OUTER JOIN`.
- Write and use both **correlated** and **non-correlated** subqueries.
- Analyze and filter data based on aggregate functions and user behavior.

## Usage

Run the SQL queries in a MySQL-compatible SQL client (e.g., MySQL Workbench, DBeaver, or command line).
Modify table or column names if your database schema differs from the default structure.
