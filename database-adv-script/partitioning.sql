-- Drop table if it exists (for testing)
DROP TABLE IF EXISTS bookings_partitioned;

-- Create a partitioned version of the bookings table
CREATE TABLE bookings_partitioned (
    id INT PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION p2025 VALUES LESS THAN (2026),
    PARTITION pmax  VALUES LESS THAN MAXVALUE
);

-- Example query to test partition pruning
EXPLAIN PARTITIONS
SELECT * 
FROM bookings_partitioned 
WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';
