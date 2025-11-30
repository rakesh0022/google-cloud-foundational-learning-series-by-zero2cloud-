# 🌩️ Day 8 — Google Cloud Storage (GCS) Full Guide (2025)

Welcome to **Day 8** of the Zero2Cloud Google Cloud Foundation Series!  
Today, we go deep into one of the most essential services in Google Cloud — **Cloud Storage (GCS)**.

GCS is the backbone of most cloud architectures: storing logs, CI/CD artifacts, backups, ML datasets, media files, and even hosting static websites.

---

# 📌 What You Will Learn
- What is **Object Storage** & how it differs from **Block** and **File** storage  
- All **Storage Classes** (Standard → Archive)  
- **Bucket Locations**: Region, Dual-Region, Multi-Region  
- **Access Models**: Uniform Access vs Fine-Grained Access  
- **Lifecycle Rules** for cost optimization  
- IAM roles used to secure your bucket  
- Hands-on demo connecting a VM with Cloud Storage  

---

# 🧱 1. What is Cloud Storage?

Google Cloud Storage is highly durable **object storage** used for storing files, backups, datasets, artifacts, logs, and static assets.

Each object is stored inside a **bucket**, along with metadata.

### Why DevOps teams rely on GCS:
- Perfect for **CI/CD build artifacts**
- Excellent for **logs & backup storage**
- Integrates with **Cloud Run, GKE, Cloud Functions**
- Used by Terraform, Jenkins, GitHub Actions, and BigQuery  

---

# 🧳 2. Object vs Block vs File Storage  
👉 **Insert comparison diagram here**  
(Place your custom diagram: object vs block vs file)

### Short explanation:
- **Object Storage (GCS):**  
  Stores files as objects with metadata inside buckets. Best for logs, backups, artifacts, static files.

- **Block Storage (Persistent Disk):**  
  Works like a virtual hard disk for Compute Engine VMs.

- **File Storage (Filestore):**  
  NFS-based shared file system for apps that need POSIX mounts.

---

# 🧭 3. Storage Classes (Cost Optimization)

| Class | Best For | Cost | Retrieval |
|------|----------|------|-----------|
| **Standard** | Active data, web apps | High | Free |
| **Nearline** | Monthly access | Low | Charged |
| **Coldline** | Quarterly access | Lower | Charged |
| **Archive** | Long-term backups | Lowest | Charged |

✔ All classes offer **same durability** → 99.999999999% (11 nines)

---

# 🌍 4. Bucket Location Types  
Choose how widely data is distributed:

### **Region**
Data stays in a single location.  
Best for: Apps deployed in one region.

### **Dual-Region**
Data is automatically stored in **two regions**.

### **Multi-Region**
Data is replicated across an entire continent.  
Best for: Global access, CDN-like workloads.

---

# 🔐 5. Access Control in GCS  
Two models:

## **Uniform Bucket Level Access (UBLA) — Recommended**
👉 IAM controls the entire bucket.  
👉 No per-object ACLs.  
👉 Cleaner and more secure.

## **Fine-Grained Access**
👉 Per-object ACL control.  
👉 Avoid unless legacy apps require it.

---

# 🔁 6. Lifecycle Management

👉 Add automatic rules to move or delete objects based on **age**, **storage class**, **versions**, or **prefix**.

Examples:
- Move objects to Nearline after 30 days  
- Delete objects after 180 days  
- Delete older versions of objects  

---

# 🛡️ 7. IAM Roles for GCS

| Role | Purpose |
|------|---------|
| `Storage Object Viewer` | Read objects |
| `Storage Object Creator` | Upload objects |
| `Storage Object Admin` | Full object access |
| `Storage Admin` | Full bucket + object management |

---

# 🧪 8. Demo Summary
See `demo.md` for detailed steps & commands.  
You will:
- Create a bucket  
- Create a service account  
- Attach the SA to a VM  
- Access bucket (read/write) from VM  

---

# 🎯 Final Takeaways
- GCS is the most flexible, durable, and scalable storage option in GCP  
- UBLA is the recommended access mode  
- Lifecycle rules control cost automatically  
- Ideal for DevOps workflows: logs, artifacts, backups, Terraform state  

---
