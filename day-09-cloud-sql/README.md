# 🌩️ Day 9 — Cloud SQL Full Guide (MySQL + PostgreSQL) | Zero2Cloud Foundation

Cloud SQL is Google Cloud’s fully-managed **relational database service**.  
It supports **MySQL, PostgreSQL, and SQL Server** — without you managing servers, backups, or OS patches.

This guide covers **concepts + MySQL demo + PostgreSQL demo** in one place.

---

# 🎯 What You Will Learn
- What Cloud SQL is & why use a managed database  
- Cloud SQL instance basics: tiers, connections, users, backups  
- How to create a **MySQL** instance & connect to it  
- How to create a **PostgreSQL** instance & connect to it  
- How to create databases, tables, insert records & query them  
- IAM access & best practices  
- When to choose MySQL vs PostgreSQL  

---

# 🧱 1. What is Cloud SQL (Lemon Language)
Cloud SQL = Google Cloud manages the database for you.

You **don’t** manage:
- VM provisioning  
- Patching  
- OS updates  
- Backups  
- High availability  

You **only** manage:
- Databases  
- Tables  
---

# 🗂️ 2. Cloud SQL Components
### ✔ Instance  
The database server itself (MySQL/PostgreSQL).

### ✔ Database  
A logical container where your tables live.

### ✔ Users  
Accounts that connect to the DB.

### ✔ Connections  
Cloud SQL supports:
- Public IP  
- Private IP (VPC)  
- Cloud SQL Auth Proxy  
- IAM DB Authentication (Postgres)

### ✔ Backups  
Cloud SQL automatically backs up daily.

---

# 🧳 3. MySQL vs PostgreSQL (Simple Comparison)

| Feature | MySQL | PostgreSQL |
|--------|--------|------------|
| Best For | Web apps, CMS | Analytics, FinTech |
| JSON support | Good | Excellent |
| Extensions | Limited | Many (PostGIS, TimescaleDB) |
| Performance | Fast | More powerful features |

---

# 🛠️ 4. Key Cloud SQL Settings (Explained Simply)
### Shapes → Choose machine type  
- Shared cores (cheap)  
- Dedicated cores (production)  

### Storage  
- SSD / HDD  
- Auto-increase option  

### Backups  
Always enable automatic backup + point-in-time recovery.

### High Availability (HA)  
If enabled → automatic failover to another zone.

---

# 🔐 5. Authentication Models
- Username + password  
- Cloud SQL Auth Proxy  
- IAM DB Authentication (PostgreSQL only)  
- SSL certificates  

---

# 🧪 6. Hands-on Demo  
👉 Full demo instructions for MySQL & PostgreSQL are in **demo.md**.

---

# 🎯 Final Takeaways
- Cloud SQL removes all the pain of DB administration  
- You only focus on writing SQL and building apps  
- MySQL is simple & fast  
- PostgreSQL is powerful & flexible  
- Cloud SQL integrates smoothly with GCE, GKE, Cloud Run  

---
- SQL queries  
- Users & passwords  

It's perfect for:
- Web apps  
- Internal tools  
- E-commerce systems  
- Any app needing a relational DB  


