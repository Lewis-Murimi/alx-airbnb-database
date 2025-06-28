# 📘 Database Normalization – AirBnB Clone

## 🎯 Objective
Ensure the AirBnB database schema follows **Third Normal Form (3NF)** to eliminate redundancy, enforce data integrity, and optimize relational structure.

---

## 🔄 What is Normalization?

Normalization is the process of organizing data in a database to reduce redundancy and improve data integrity. It is achieved through a series of normal forms:

- **1NF (First Normal Form)**: Eliminate repeating groups and ensure atomicity.
- **2NF (Second Normal Form)**: Eliminate partial dependencies (applies to tables with composite primary keys).
- **3NF (Third Normal Form)**: Eliminate transitive dependencies — all non-key attributes must depend only on the primary key.

---

## ✅ Normalization Analysis of AirBnB Schema

### 1. **User Table**

| Attribute         | Depends on `user_id`? | Notes                    |
|------------------|------------------------|--------------------------|
| first_name        | ✅ Yes                 | Atomic and non-redundant |
| last_name         | ✅ Yes                 |                          |
| email             | ✅ Yes (also unique)   |                          |
| password_hash     | ✅ Yes                 |                          |
| phone_number      | ✅ Yes                 | Nullable                 |
| role              | ✅ Yes (ENUM)          |                          |
| created_at        | ✅ Yes                 |                          |

🔎 **Conclusion**: The `users` table is in **3NF** — no partial or transitive dependencies.

---

### 2. **Property Table**

| Attribute         | Depends on `property_id`? | Notes                                        |
|------------------|---------------------------|----------------------------------------------|
| host_id           | ✅ Yes                    | FK → `users(user_id)`                        |
| name              | ✅ Yes                    | Atomic and relevant only to this property    |
| description       | ✅ Yes                    |                                              |
| location          | ✅ Yes                    |                                              |
| pricepernight     | ✅ Yes                    |                                              |
| created_at        | ✅ Yes                    |                                              |
| updated_at        | ✅ Yes                    |                                              |

🔎 **Conclusion**: The `properties` table is in **3NF** — no derived or transitive fields. Location and price are property-specific and not repeated elsewhere.

---

### 3. **Booking Table**

| Attribute      | Depends on `booking_id`? | Notes                                  |
|---------------|---------------------------|----------------------------------------|
| property_id    | ✅ Yes                    | FK → `properties(property_id)`         |
| user_id        | ✅ Yes                    | FK → `users(user_id)`                  |
| start_date     | ✅ Yes                    | Booking-specific                       |
| end_date       | ✅ Yes                    |                                        |
| total_price    | ✅ Yes                    | Calculated value, but stored for history |
| status         | ✅ Yes                    | ENUM                                  |
| created_at     | ✅ Yes                    |                                        |

🔎 **Conclusion**: Fully normalized. All non-key attributes depend on the primary key (`booking_id`) and not on each other. Booking is **in 3NF**.

---

### 4. **Payment Table**

| Attribute        | Depends on `payment_id`? | Notes                            |
|------------------|--------------------------|----------------------------------|
| booking_id       | ✅ Yes                   | FK → `bookings(booking_id)`      |
| amount           | ✅ Yes                   | Payment-specific                 |
| payment_date     | ✅ Yes                   |                                  |
| payment_method   | ✅ Yes                   | ENUM (`credit_card`, etc.)       |

🔎 **Conclusion**: No transitive dependencies — in **3NF**.

---

### 5. **Review Table**

| Attribute     | Depends on `review_id`? | Notes                                  |
|---------------|--------------------------|----------------------------------------|
| property_id   | ✅ Yes                   | FK → `properties(property_id)`         |
| user_id       | ✅ Yes                   | FK → `users(user_id)`                  |
| rating        | ✅ Yes                   | Atomic, numeric 1–5                    |
| comment       | ✅ Yes                   | Textual feedback                       |
| created_at    | ✅ Yes                   |                                        |

🔎 **Conclusion**: In **3NF**. No repeating groups or indirect dependencies.

---

### 6. **Message Table**

| Attribute       | Depends on `message_id`? | Notes                                  |
|------------------|--------------------------|----------------------------------------|
| sender_id        | ✅ Yes                   | FK → `users(user_id)`                  |
| recipient_id     | ✅ Yes                   | FK → `users(user_id)`                  |
| message_body     | ✅ Yes                   |                                        |
| sent_at          | ✅ Yes                   |                                        |

🔎 **Conclusion**: In **3NF**. Messages are self-contained and tied only to sender/recipient IDs.

---

## ✅ Summary of Normalization

| Table        | 1NF | 2NF | 3NF |
|--------------|-----|-----|-----|
| users        | ✅  | ✅  | ✅  |
| properties   | ✅  | ✅  | ✅  |
| bookings     | ✅  | ✅  | ✅  |
| payments     | ✅  | ✅  | ✅  |
| reviews      | ✅  | ✅  | ✅  |
| messages     | ✅  | ✅  | ✅  |

All tables in the AirBnB database design are fully normalized up to **Third Normal Form (3NF)**. No redesign was required.

---