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

