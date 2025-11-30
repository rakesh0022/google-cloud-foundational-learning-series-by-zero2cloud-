# 🌥️ Day 7 — Google Cloud IAM Full Guide (2025)  
### Roles, Service Accounts, Least Privilege, PAM + Live Demo

**🎥 YouTube Video:** https://youtu.be/ShcfK_7xDkY  
**📌 Playlist:** https://www.youtube.com/playlist?list=PLaGQ5K8oDWBlgsDpviW2aYCzoHzyvLLeD

---

## 📘 Overview  
Google Cloud IAM (Identity & Access Management) lets you control **who can access what** in your Google Cloud environment.  
You learn how identities, permissions, roles, least privilege & PAM (Privileged Access Management) work — with full hands-on demos.

---

## 🧩 IAM Core Components  
Reference: IAM PPT — Key Components slide (page 3) :contentReference[oaicite:0]{index=0}  

### **1. Identity**
Entities that need access to Google Cloud:
- Google Accounts  
- Service Accounts  
- Google Groups  
- Cloud Identity Domains  
Reference: PPT page 4 :contentReference[oaicite:1]{index=1}  

### **2. Roles**
Roles = collection of permissions  
Types:
- **Basic Roles**
- **Predefined Roles**
- **Custom Roles**

Reference: PPT page 5 :contentReference[oaicite:2]{index=2}  

### **3. Permissions**
Define actions such as:
- `storage.objects.create`
- `compute.instances.start`  
Reference: PPT page 6 :contentReference[oaicite:3]{index=3}  

---

## 🔐 How IAM Works  
PPT page 7 explains IAM’s evaluation model:  
IAM checks "ALLOW" vs "DENY" policies before granting access.  
:contentReference[oaicite:4]{index=4}

Transcript also confirms the same flow: the system checks if identity has the correct permission for the attempted operation.  
:contentReference[oaicite:5]{index=5}

---

## 🎯 Key IAM Concepts Explained

### ⭐ Least Privilege  
Only give the permissions users truly need.  
PPT page 8 highlights this principle clearly.  
:contentReference[oaicite:6]{index=6}

### ⭐ Access Boundaries  
Limit a service account to **specific resources only**.  
PPT page 9 shows this concept.  
:contentReference[oaicite:7]{index=7}

### ⭐ PAM (Privileged Access Management)  
Temporary elevated access — ideal for production troubleshooting.  
Transcript demo shows enabling during a Cloud Run task.  
:contentReference[oaicite:8]{index=8}  
PPT page 10 summarizes PAM.  
:contentReference[oaicite:9]{index=9}

---

## ⚙️ Hands-On Demo Covered (from Video)

### ✔ Assigning Basic, Predefined & Custom Roles  
The video demonstrates:
- Assigning basic roles (owner/editor/viewer)  
- Assigning predefined roles like Storage Admin  
- Creating a custom role with selected permissions  
:contentReference[oaicite:10]{index=10}  

### ✔ Creating a Custom Role  
Steps shown:
1. Go to **IAM → Roles → Create Role**  
2. Add permissions manually  
3. Save and assign to a principal  
:contentReference[oaicite:11]{index=11}  

### ✔ Live PAM Demo  
User requests “Cloud Run Admin” access → granted for **1 hour**.  
Then the system automatically revokes after expiry.  
:contentReference[oaicite:12]{index=12}  

---

## 🚀 What You Will Learn  
- What IAM is and why it matters  
- Identities in GCP  
- Roles (Basic vs Predefined vs Custom)  
- How permissions actually work  
- Hands-on IAM demo  
- Least privilege security model  
- Access boundaries  
- PAM live demo  

---

## 📁 Folder Structure  
day-07-google-cloud-iam/
├── README.md # Full explanation
├── SUMMARY.md # Short teaching script
├── diagrams/ # Add PPT images later
└── demo-scripts/ # gcloud commands (optional)


---

## 🔗 Additional Learning  
- IAM Docs: https://cloud.google.com/iam/docs  
- Understanding IAM roles: https://cloud.google.com/iam/docs/roles-overview  

---

## ✨ Author  
**Rakesh Pandey — Zero 2 Cloud**
