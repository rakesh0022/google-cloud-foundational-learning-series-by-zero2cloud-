# 🌩️ Day 8 — Google Cloud Storage (GCS) Overview

This page is designed for LIVE EXPLANATION during the video.  
Short, crisp, simple to understand.

---

## ⭐ What is Cloud Storage?
A highly durable **object storage service** for storing files, backups, logs, and artifacts.

---

## ⭐ Object vs File vs Block Storage  
👉 (Insert your diagram here)

- **Object Storage (GCS)** → Ideal for backups, logs, artifacts  
- **File Storage (Filestore)** → Shared POSIX file system  
- **Block Storage (Persistent Disk)** → VM attached disks  

---

## ⭐ Storage Classes
- **Standard** → Frequent access  
- **Nearline** → Access once per month  
- **Coldline** → Access once per quarter  
- **Archive** → Long-term storage  

---

## ⭐ Bucket Locations
- **Region** → Single location  
- **Dual-Region** → Two regions, auto replication  
- **Multi-Region** → Best performance globally  

---

## ⭐ Access Control
### **Uniform Bucket Level Access (Recommended)**
- Access controlled only by IAM  
- Simple, secure, modern

### **Fine-Grained Access**
- Object-level ACLs  
- Used only for legacy apps  

---

## ⭐ Lifecycle Management
Automate:
- Move to cheaper class  
- Delete old objects  
- Clean up versions  

---

## ⭐ Common DevOps Use Cases
- CI/CD artifacts  
- App logs & images  
- Backup storage  
- Hosting static websites  

---

## ⭐ Demo Steps (High-level)
- Create bucket  
- Create service account  
- Launch VM with SA  
- Access bucket from VM  
