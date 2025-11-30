# 🌩️ Day 8 — Google Cloud Storage (GCS) — Overview Sheet  
*(Use this while explaining in your video)*

---

## ⭐ What is Cloud Storage?
- Google’s **object storage** system  
- Stores logs, backups, artifacts, images, datasets  
- Highly durable (11 nines)

---

## ⭐ Bucket Basics
- Bucket = Container for your objects  
- Name must be **globally unique**  
- Bucket name **cannot be renamed**  
- Choose **Region / Dual-Region / Multi-Region**  

---

## ⭐ Bucket Location Types
- **Region:** Mumbai — local apps  
- **Dual-Region:** Mumbai + Delhi — high availability  
- **Multi-Region:** Asia — global distribution  

---

## ⭐ Important Bucket Settings
- **Versioning:** recover deleted/overwritten objects  
- **Public Access Prevention:** avoid accidental exposure  
- **Encryption:** Google-managed / CMEK  
- **UBLA:** IAM-only access (recommended)  
- **Fine-grained:** Object-level ACL (legacy)

---

## ⭐ Storage Classes
- **Standard** → Frequent access  
- **Nearline** → Monthly access  
- **Coldline** → Quarterly access  
- **Archive** → Long-term storage  

---

## ⭐ Object vs File vs Block Storage
- **Object (GCS):** Backups, logs, artifacts  
- **File (Filestore):** POSIX shared filesystem  
- **Block (Persistent Disk):** VM disks  

---

## ⭐ Lifecycle Rules
- Move to cheaper storage automatically  
- Delete old files  
- Delete old versions  

---

## ⭐ DevOps Use Cases
- Store CI/CD artifacts  
- Backup & logs  
- Terraform state  
- Host static websites  

---

## ⭐ Demo (High Level)
- Create bucket  
- Create service account  
- Create VM with SA  
- Read/write bucket objects  

---
