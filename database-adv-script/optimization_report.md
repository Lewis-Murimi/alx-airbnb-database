# Query Optimization Report - ALX Airbnb Database

## Objective

Optimize a complex query that joins bookings with users, properties, and payments.

---

## Initial Query Overview

The original query joins the following tables:
- `bookings`
- `users`
- `properties`
- `payments`

### Potential Issues Found via `EXPLAIN ANALYZE`:
- Full table scans on `bookings`, `users`, `payments`
- No index used on `bookings.user_id`, `bookings.property_id`, or `payments.booking_id`
- Some fields like `users.email` and `properties.location` are selected even if not always needed

---

## Refactored Query (Optimized)

```sql
-- Refactored query with only essential fields and indexed joins
SELECT 
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.first_name,
    u.last_name,
    p.name AS property_name,
    pay.amount,
    pay.status
FROM 
    bookings b
JOIN 
    users u ON b.user_id = u.id
JOIN 
    properties p ON b.property_id = p.id
LEFT JOIN 
    payments pay ON b.id = pay.booking_id;
