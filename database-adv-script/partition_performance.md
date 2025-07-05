# Table Partitioning Report - ALX Airbnb Database

## Objective

Improve performance of queries on the `bookings` table by applying partitioning based on `start_date`.

## Strategy

We used MySQL's `RANGE` partitioning by `YEAR(start_date)` to split the `bookings` table into separate partitions per year.

## Before Partitioning

**Query:**
```sql
SELECT * FROM bookings WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';
