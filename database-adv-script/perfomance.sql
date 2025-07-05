-- Initial complex query with filtering using WHERE and AND
SELECT 
    bookings.id AS booking_id,
    bookings.start_date,
    bookings.end_date,
    users.id AS user_id,
    users.first_name,
    users.last_name,
    users.email,
    properties.id AS property_id,
    properties.name AS property_name,
    properties.location,
    payments.id AS payment_id,
    payments.amount,
    payments.status,
    payments.payment_date
FROM 
    bookings
JOIN 
    users ON bookings.user_id = users.id
JOIN 
    properties ON bookings.property_id = properties.id
LEFT JOIN 
    payments ON bookings.id = payments.booking_id
WHERE 
    payments.status = 'COMPLETED' AND bookings.start_date >= '2024-01-01';

-- Analyze performance
EXPLAIN ANALYZE
SELECT 
    bookings.id AS booking_id,
    bookings.start_date,
    bookings.end_date,
    users.id AS user_id,
    users.first_name,
    users.last_name,
    users.email,
    properties.id AS property_id,
    properties.name AS property_name,
    properties.location,
    payments.id AS payment_id,
    payments.amount,
    payments.status,
    payments.payment_date
FROM 
    bookings
JOIN 
    users ON bookings.user_id = users.id
JOIN 
    properties ON bookings.property_id = properties.id
LEFT JOIN 
    payments ON bookings.id = payments.booking_id
WHERE 
    payments.status = 'COMPLETED' AND bookings.start_date >= '2024-01-01';
