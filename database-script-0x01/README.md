
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


---

## 🌱 How to Seed the Database

After setting up the schema, populate the `alx_airbnb` database with realistic sample data using the `seed.sql` script.



### 🧪 Sample Data Includes

- 3 users (guest, host, admin)  
- 2 property listings created by a host  
- 2 bookings made by a guest  
- 1 payment linked to a confirmed booking  
- 1 property review from the guest  
- 2 messages exchanged between users  

All sample data respects foreign key constraints and simulates real-world platform usage.

### 🚀 Seeding Instructions

#### 🖥 Option 1: Using DBeaver
1. Right-click the `alx_airbnb` database → **SQL Editor > Open SQL Script**.
2. Load the file: `database-script-0x02/seed.sql`.
3. Click **Execute** (Ctrl + Enter) to run the script.

#### 🖥 Option 2: Using MySQL CLI
```bash
mysql -u your_user -p alx_airbnb < database-script-0x02/seed.sql

