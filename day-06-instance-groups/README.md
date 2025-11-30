# Day 6 — Instance Groups in Google Cloud  
**Managed Instance Groups vs Unmanaged + Live Demo**  
**YouTube Video:** https://youtu.be/fUF14bA08M0  
**Playlist:** https://www.youtube.com/playlist?list=PLaGQ5K8oDWBlgsDpviW2aYCzoHzyvLLeD  

---

## 📌 Overview
This session explains **Instance Groups** in Google Cloud — one of the most important concepts for scaling, auto-healing and managing fleets of VMs.  
Based on the transcript, this video covers the concept, benefits, types, and full console demo of MIG & UMIG. :contentReference[oaicite:1]{index=1}

---

## 🎯 What You Will Learn
- What is an Instance Group?  
- Managed Instance Groups (MIG)  
- Unmanaged Instance Groups (UMIG)  
- Benefits of MIG  
- Instance Templates explained  
- Hands-on demo:
  - Create Instance Template  
  - Create MIG (multi-zone + autoscaling)  
  - Trigger autoscaling using CPU stress  
  - Create UMIG  
  - Show difference in behavior (auto-healing vs no healing)

---

## 🧠 1. What is an Instance Group?
Instance Group = **Collection of VMs managed together**.  
Instead of managing every VM individually, instance groups let you manage them as a **single unit**.  
Two types:
- **Managed Instance Group (MIG)**
- **Unmanaged Instance Group (UMIG)**

---

## 🏗 2. Managed Instance Groups (MIG)
MIG = A set of **identical** VMs created from an **Instance Template**.  
Every VM has:
- Same machine type  
- Same OS  
- Same startup script  
- Same configuration  

### MIG Key Features (from the video)
✔ Auto-healing failed VMs  
✔ Application-based health checks  
✔ Multi-zone or regional deployment  
✔ Autoscaling (CPU, load, etc.)  
✔ Seamless integration with Load Balancer  
✔ Automatic updates (rolling / canary)  

💡 Perfect for production workloads.

---

## 🧱 3. Unmanaged Instance Groups (UMIG)
UMIG = A group of **different/heterogeneous** VMs.

### UMIG Limitations (from the video)
✖ No autoscaling  
✖ No auto-healing  
✖ No multi-zone  
✖ No instance templates  
✖ Not suitable for production  

💡 Mostly used for Dev / QA or manual grouping.

---

## 🧩 4. Instance Template
Before creating a MIG, you must create an **Instance Template**.

It contains:
- Machine type  
- OS image  
- Startup script  
- Network config  
- Labels  
- Boot disk

All MIG instances are created from this template to ensure **consistency**.

---

## 🖥️ 5. Hands-on Demo Steps
The video demonstrates the full workflow. Below is a clean step-by-step version.

### **A. Create Instance Template**
```bash
Compute Engine → Instance Templates → Create
Machine type: e2-medium  
Image: Debian 12  
Allow HTTP traffic  
Add Startup Script (Apache web server)


Startup Script used in video:

#! /bin/bash
apt update
apt install -y apache2
echo "<h1>Hello from MIG</h1>" >/var/www/html/index.html
systemctl restart apache2
B. Create a Managed Instance Group
Compute Engine → Instance Groups → Create
Type: Managed
Location: Multi-zone (us-central1-a/b/c)
Instance Template: (select the template you created)
Autoscaling: Enabled
Min instances: 2
Max instances: 5
Autoscaling metric: CPU ≥ 50%

C. Trigger Autoscaling

In the video, you SSH into both VMs and run CPU stress:

sudo apt install stress -y
stress --cpu 4


→ CPU goes 100%
→ MIG automatically creates new VMs (3 → 5)

MIG autoscaling successfully validated. ✔

D. Create an Unmanaged Instance Group

Steps:

Create 2 standalone VMs (different types/OS)

Instance Groups → Create Unmanaged Group

Select same zone as the VMs

Add both VMs manually

Demonstrated behavior:

When a VM was deleted → UMIG did NOT auto-create a new VM.
This confirms no auto-healing.

📚 Files in This Folder

summary.md — presenter-friendly main points

README.md — detailed explanation (this file)

diagrams/ — (add your own images)

demo-scripts/ — (optional: add stress scripts, template script, etc.)

🔗 Official Documentation

Google Cloud Instance Groups:
https://cloud.google.com/compute/docs/instance-groups

🙌 Author

Rakesh Pandey — Zero 2 Cloud
YouTube: https://youtube.com/@zero2cloud
