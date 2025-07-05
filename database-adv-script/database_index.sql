-- Create index on users.id (used in joins and subqueries)
CREATE INDEX idx_users_id ON users(id);

-- Create index on bookings.user_id (used in joins, subqueries, grouping)
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Create index on bookings.property_id (used in joins, grouping, ranking)
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Create index on properties.id (used in joins and subqueries)
CREATE INDEX idx_properties_id ON properties(id);

-- Create index on reviews.property_id (used in joins and aggregations)
CREATE INDEX idx_reviews_property_id ON reviews(property_id);
