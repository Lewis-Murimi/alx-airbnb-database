
---

## 🧱 Schema Overview

The DDL defines a relational schema for the following core entities:

- `users` – Guests, hosts, and admins
- `properties` – Listings created by hosts
- `bookings` – Reservations made by users
- `payments` – Linked to bookings
- `reviews` – Property reviews from guests
- `messages` – User-to-user communication

Each table is designed with strong relational integrity using:
- Primary and foreign keys
- ENUMs and CHECK constraints
- Timestamps for auditing
- Indexes for performance (e.g., email, property_id, booking_id)

---

## ⚙️ How to Run the Schema

### 💻 Requirements
- MySQL 8.0+
- A MySQL user with permission to create tables
- A database named `alx_airbnb`

### 🔧 Setup Instructions

#### 🖥 Option 1: Using DBeaver
1. Open DBeaver and connect to your MySQL server.
2. Right-click on your target database (`alx_airbnb`) → **SQL Editor** → **Open SQL Script**.
3. Load the file: `database-script-0x02/schema.sql`.
4. Click **Execute** (Ctrl + Enter).

#### 🖥 Option 2: Using MySQL CLI
```bash
mysql -u your_user -p alx_airbnb < database-script-0x02/schema.sql
