-- 👤 USERS
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
  (UUID(), 'Alice', 'Johnson', 'alice@example.com', 'hashedpassword1', '0712345678', 'guest', NOW()),
  (UUID(), 'Bob', 'Smith', 'bob@example.com', 'hashedpassword2', '0723456789', 'host', NOW()),
  (UUID(), 'Carol', 'Williams', 'carol@example.com', 'hashedpassword3', NULL, 'admin', NOW());

-- 📦 PROPERTIES
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES
  (UUID(), 
   (SELECT user_id FROM users WHERE email = 'bob@example.com'), 
   'Cozy Studio in Nairobi', 
   'A comfortable studio apartment ideal for solo travelers.', 
   'Nairobi, Kenya', 
   45.00, 
   NOW(), 
   NOW()
  ),
  (UUID(), 
   (SELECT user_id FROM users WHERE email = 'bob@example.com'), 
   'Beach House in Mombasa', 
   'Spacious beach house with ocean view.', 
   'Mombasa, Kenya', 
   120.00, 
   NOW(), 
   NOW()
  );

-- 🏨 BOOKINGS
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
  (
    UUID(),
    (SELECT property_id FROM properties WHERE name = 'Cozy Studio in Nairobi'),
    (SELECT user_id FROM users WHERE email = 'alice@example.com'),
    '2024-12-01',
    '2024-12-05',
    180.00,
    'confirmed',
    NOW()
  ),
  (
    UUID(),
    (SELECT property_id FROM properties WHERE name = 'Beach House in Mombasa'),
    (SELECT user_id FROM users WHERE email = 'alice@example.com'),
    '2025-01-10',
    '2025-01-15',
    600.00,
    'pending',
    NOW()
  );

-- 💳 PAYMENTS
INSERT INTO payments (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
  (
    UUID(),
    (SELECT booking_id FROM bookings WHERE total_price = 180.00),
    180.00,
    NOW(),
    'credit_card'
  );

-- 🌟 REVIEWS
INSERT INTO reviews (review_id, property_id, user_id, rating, comment, created_at)
VALUES
  (
    UUID(),
    (SELECT property_id FROM properties WHERE name = 'Cozy Studio in Nairobi'),
    (SELECT user_id FROM users WHERE email = 'alice@example.com'),
    5,
    'Wonderful stay! Very clean and quiet.',
    NOW()
  );

-- 💬 MESSAGES
INSERT INTO messages (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
  (
    UUID(),
    (SELECT user_id FROM users WHERE email = 'alice@example.com'),
    (SELECT user_id FROM users WHERE email = 'bob@example.com'),
    'Hi Bob, is the Beach House available for January?',
    NOW()
  ),
  (
    UUID(),
    (SELECT user_id FROM users WHERE email = 'bob@example.com'),
    (SELECT user_id FROM users WHERE email = 'alice@example.com'),
    'Yes, it is! Let me know your travel dates.',
    NOW()
  );
