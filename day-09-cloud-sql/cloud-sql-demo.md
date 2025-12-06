# 🚀 Day 9 Demo — Cloud SQL Hands-On (MySQL + PostgreSQL)

This demo covers BOTH MySQL and PostgreSQL.

---

# 🔹 1. Connect to MySQL Instance
```bash
gcloud sql connect mymysql --user=root

Create a database
CREATE DATABASE demo_db;

Use the database
USE demo_db;

Create a table
CREATE TABLE employees (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  role VARCHAR(50)
);

Insert data
INSERT INTO employees (name, role)
VALUES ('Rakesh', 'DevOps Engineer');

Query data
SELECT * FROM employees;

🔹 2. Connect to PostgreSQL Instance
gcloud sql connect myfirstpostgresql --user=postgres

Create a database
CREATE DATABASE demo_db;

List databases
\l

Connect to the database
\c demo_db;

Create a table
CREATE TABLE employees (
  id SERIAL PRIMARY KEY,
  name TEXT,
  role TEXT
);

Insert data
INSERT INTO employees (name, role)
VALUES ('Rakesh', 'DevOps Engineer');

Query data
SELECT * FROM employees;

🔹 3. Common Issues
Problem: \l gives error

Use:

\l+

Problem: Cannot connect

Check:

Public IP enabled

Password correct

Cloud Shell IP allowlisted
