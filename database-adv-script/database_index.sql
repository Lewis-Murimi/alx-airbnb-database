-- Create index on users.id
CREATE INDEX idx_users_id ON users(id);

-- Create index on bookings.user_id
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Create index on bookings.property_id
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Create index on properties.id
CREATE INDEX idx_properties_id ON properties(id);

-- Create index on reviews.property_id
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- Measure performance: BEFORE or AFTER creating index
-- Query: Total number of bookings per user

EXPLAIN ANALYZE
SELECT 
    user_id,
    COUNT(*) AS total_bookings
FROM 
    bookings
GROUP BY 
    user_id;

-- Query: Rank properties by total number of bookings

EXPLAIN ANALYZE
SELECT 
    property_id,
    total_bookings,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS booking_rank
FROM (
    SELECT 
        property_id,
        COUNT(*) AS total_bookings
    FROM 
        bookings
    GROUP BY 
        property_id
) AS booking_counts;
