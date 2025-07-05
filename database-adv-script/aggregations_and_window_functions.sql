-- Total number of bookings made by each user
SELECT 
    user_id,
    COUNT(*) AS total_bookings
FROM 
    bookings
GROUP BY 
    user_id;

-- Rank properties by total number of bookings using both RANK() and ROW_NUMBER()
SELECT 
    property_id,
    total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) AS rank_booking,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS rownum_booking
FROM (
    SELECT 
        property_id,
        COUNT(*) AS total_bookings
    FROM 
        bookings
    GROUP BY 
        property_id
) AS booking_counts;
