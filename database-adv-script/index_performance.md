# Index Performance Analysis - ALX Airbnb Database

## Objective

Improve query performance by identifying frequently queried columns and applying appropriate indexes.

## Indexed Columns

| Table       | Column           | Index Name                  | Reason for Indexing              |
|-------------|------------------|-----------------------------|----------------------------------|
| `users`     | `id`             | `idx_users_id`              | Frequently used in joins/subqueries |
| `bookings`  | `user_id`        | `idx_bookings_user_id`      | Used in joins, grouping, filtering |
| `bookings`  | `property_id`    | `idx_bookings_property_id`  | Used in ranking, joins, grouping |
| `properties`| `id`             | `idx_properties_id`         | Used in joins and subqueries    |
| `reviews`   | `property_id`    | `idx_reviews_property_id`   | Used in aggregations, joins     |

## Performance Measurement

We used `EXPLAIN` (in MySQL) to measure the performance impact of indexing.

### Example Query Before Index

```sql
EXPLAIN
SELECT user_id, COUNT(*) FROM bookings GROUP BY user_id;
