# 🌩️ Day 8 — Google Cloud Storage (GCS) Full Guide (2025)

Welcome to **Day 8** of the Zero2Cloud Google Cloud Foundation Series!  
Today we deep-dive into **Google Cloud Storage (GCS)** — the most widely used storage option in GCP.

---

# 📌 What You Will Learn
- What is **Object Storage** and how it compares to **Block** & **File** storage  
- Bucket concepts: **location**, **naming rules**, **versioning**, **encryption**, **public access prevention**  
- Understanding **Storage Classes** (Standard → Archive)  
- Bucket locations: **Region**, **Dual-Region**, **Multi-Region**  
- Access control models: **Uniform Access vs Fine-Grained Access**  
- **Lifecycle Management** for cost optimization  
- IAM roles for securing GCS  
- Hands-on demo: VM + GCS integration  

---

# 🧱 1. What is Cloud Storage?

Google Cloud Storage is highly durable **object storage** used for storing:
- Backups  
- Logs  
- CI/CD artifacts  
- Media files  
- Datasets  
- Static websites  

Objects are stored inside **buckets** along with metadata.

---

# 🪣 2. Buckets Explained

### **2.1 Bucket = Container for Your Objects**
- Stores objects + metadata  
- **Name must be globally unique**  
- Name is **immutable** (cannot be renamed)  
- You must choose a **location** during creation  

### **2.2 Location Types**
👉 **Insert diagram here (Region → Dual → Multi)**

| Location Type | Example | Best For |
|---------------|---------|----------|
| **Region** | asia-south1 (Mumbai) | Apps running in one region |
| **Dual-Region** | Mumbai + Delhi | Higher availability |
| **Multi-Region** | Asia | Content delivery, large audience |

### **2.3 Important Bucket Settings**
- **Versioning:** Recover old/deleted objects  
- **Public Access Prevention:** Avoid accidental public exposure  
- **IAM vs ACLs:** (UBLA recommended)  
- **Encryption:**  
  - Google-managed  
  - **CMEK** (Customer Managed Keys)  

---

# 🧳 3. Object vs Block vs File Storage  
👉 *Place your diagram here*

### **Object Storage (GCS)**
- Stores objects (file + metadata)  
- Best for media, logs, backups, artifacts  

### **Block Storage (Persistent Disk)**
- Raw disk attached to VMs  
- Used for OS and databases  

### **File Storage (Filestore)**
- Shared POSIX file system  
- Ideal for stateful apps (Jenkins, shared configs)  

---

# 🧭 4. Storage Classes

| Class | Best For | Cost | Retrieval |
|------|----------|------|-----------|
| **Standard** | Frequent access | High | Free |
| **Nearline** | Monthly access | Low | Charged |
| **Coldline** | Quarterly access | Lower | Charged |
| **Archive** | Long-term storage | Lowest | Charged |

✔ All storage classes have **11 nines durability**  
✔ Only cost & retrieval frequency change  

---

# 🌍 5. Bucket Location Types

### **Region**
Data stored in one data center  
✔ Low latency  
✔ Best for workloads in a single country  

### **Dual-Region**
Stored in two selected regions  
✔ Higher availability  
✔ Automatic failover  

### **Multi-Region**
Stored across an entire continent  
✔ Best for global-read workloads  
✔ Good for public content  

---

# 🔐 6. Access Control Models

### **Uniform Bucket Level Access (UBLA)** — Recommended
- IAM controls everything  
- No per-object ACLs  
- Simple + secure  

### **Fine-Grained Access**
- Object-level ACL  
- Only required for legacy apps  

---

# 🔁 7. Lifecycle Management

Automate storage cost optimization.

Examples:
- Move to Nearline after **30 days**  
- Move to Archive after **365 days**  
- Delete objects after **180 days**  
- Delete older versions  

---

# 🛡️ 8. IAM Roles for GCS

| Role | Description |
|------|-------------|
| **Storage Object Viewer** | Read objects |
| **Storage Object Creator** | Upload new objects |
| **Storage Object Admin** | Full object CRUD |
| **Storage Admin** | Full bucket + object control |

---

# 🧪 9. Demo Overview
Full commands & steps are in `demo.md`.

You will:
- Create bucket  
- Create service account  
- Create VM with SA  
- Read/write objects from VM  

---

# 🎯 Final Takeaways
- GCS is the easiest & most flexible storage in Google Cloud  
- UBLA + IAM = modern, secure approach  
- Lifecycle rules help reduce cost automatically  
- Perfect for CI/CD artifacts, logs, backups, ML datasets  

---
