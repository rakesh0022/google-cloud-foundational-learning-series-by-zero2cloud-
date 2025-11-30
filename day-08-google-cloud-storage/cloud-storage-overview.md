# 🌩️ Day 8 — Cloud Storage (GCS) Overview

---

# ⭐ 1. What is Google Cloud Storage?
- Object storage for files, logs, backups, artifacts  
- Durable (11 nines), scalable, secure  

---

# ⭐ 2. Object vs Block vs File Storage  

- **Object (GCS):** Best for logs, backups, media  
- **Block (PD):** VM-attached disk  
- **File (Filestore):** Shared NFS filesystem  

---

# ⭐ 3. Buckets Explained  
### Bucket Basics  
- Container for your objects  
- Globally unique name  
- Cannot be renamed  

### Bucket Locations  
- **Region** → low latency  
- **Dual-Region** → reliability  
- **Multi-Region** → global delivery  

### Important Settings  
- Versioning  
- Public access prevention  
- Encryption (Google/CMEK)

---

# ⭐ 4. Storage Classes  
- **Standard** → frequent use  
- **Nearline** → monthly  
- **Coldline** → quarterly  
- **Archive** → long-term, lowest cost  

---

# ⭐ 5. Bucket Location Types  
- Regional  
- Dual-Region  
- Multi-Region  

---

# ⭐ 6. Access Control Models  
### Uniform Bucket Level Access (UBLA)
- IAM-based, modern, secure  

### Fine-Grained  
- Object ACL, legacy use only  

---

# ⭐ 7. Lifecycle Management  
- Move old objects to cheaper classes  
- Delete old objects  
- Clean versions  

---

# ⭐ 8. IAM Roles  
- Viewer / Creator / Admin roles for objects & buckets  

---

# ⭐ 9. Demo (High-Level)  
- Create bucket  
- Create service account  
- Create VM with SA  
- Read/write objects  
