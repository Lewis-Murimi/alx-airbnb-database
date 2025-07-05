# Performance Monitoring Report - ALX Airbnb Database

## Objective

Monitor and refine database performance by analyzing real-world query execution plans and applying targeted optimizations.

---

## Monitored Queries and Tools

- Used `EXPLAIN ANALYZE` on frequently run queries.
- Focused on `bookings`, `users`, `properties`, and `reviews`.

---

### 1. Bookings Count by User

**Query:**
```sql
SELECT user_id, COUNT(*) FROM bookings GROUP BY user_id;
