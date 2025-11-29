# Day 02 — Deploy Your First Web App on Google Cloud  
**Compute Engine + Persistent Disk Explained**

**YouTube Video:** https://youtu.be/3sKYk1KZrpk
**Playlist:** https://www.youtube.com/playlist?list=PLaGQ5K8oDWBlgsDpviW2aYCzoHzyvLLeD

---

## 📌 Overview  
On Day 2, you learn the *real foundation* of Google Cloud: **Compute Engine (Virtual Machines)**.  
This lesson shows how to create a VM, install a basic NGINX web server, and attach a persistent disk — all using the Google Cloud Console.  

This video is fully hands-on and shows how easy it is to go from **zero to a running VM** in minutes.  
(Transcript Source: :contentReference[oaicite:0]{index=0})

---

## 🎯 What You Will Learn  
- What is Compute Engine & why it’s the core of GCP  
- How to create a Virtual Machine  
- Choosing machine types (E2, C2, etc.) and understanding cost impact  
- Installing a web server (NGINX)  
- Using public & internal IP  
- Why Persistent Disks are required  
- Attaching and configuring a new persistent disk (SSD)

---

## 🧠 Key Concepts Explained

### **1. What is Compute Engine?**  
- Virtual machine inside Google Cloud  
- You choose CPU, RAM, OS, Region, Zone  
- Pay only for what you use  
- No need to manage hardware  
(From transcript: “When you hear compute engine, just think your personal computer running inside Google's cloud.” :contentReference[oaicite:1]{index=1})

---

### **2. Creating Your First VM**  
Steps shown in the demo:
1. Open **Compute Engine → VM Instances → Create**  
2. Choose machine type  
3. Select OS (Debian/Ubuntu/Windows)  
4. Allow HTTP traffic  
5. Click **Create**

The VM boots in ~1–2 minutes.

---

### **3. SSH Into VM**
Click **SSH** → Browser-based SSH opens instantly.  
“No keys or external terminal needed.”

---

### **4. Install NGINX Web Server**
Commands from the video:

```bash
sudo apt update
sudo apt install nginx
```

Confirm installation by opening:

```
http://<your-external-ip>
```

You should see: **Welcome to nginx!**

---

### **5. Attach a Persistent Disk**
Demo steps from video:
1. Go to **VM Instance → Edit**  
2. Scroll to “Additional disks”  
3. Click **Add new disk**  
4. Choose:
   - SSD  
   - Size (e.g., 50 GB)  
5. Click **Save**

Disk appears under **Storage → Additional Disk**.

(Transcript reference: attaching disk explanation: :contentReference[oaicite:2]{index=2})

---

## 🧪 Commands Used in the Video

```bash
# Update server
sudo apt update

# Install nginx
sudo apt install nginx
```

You may add `demo-scripts/install-nginx.sh` inside this folder.

---

## 📂 Folder Structure for This Day

```
day-02-deploy-first-web-app-compute-engine/
│
├─ README.md   ← (This file)
├─ demo-scripts/
│    ├─ install-nginx.sh
│    ├─ attach-disk-steps.txt
│
└─ diagrams/
     └─ vm-architecture.png (YOU CAN ADD LATER)
```

---

## 📝 Additional Notes  
- Machine type affects cost directly (e.g., E2 vs C2)  
  (Transcript clearly highlights cost comparison: :contentReference[oaicite:3]{index=3})  
- Persistent Disks survive VM deletion (unless set to auto-delete)  
- Perfect first step before Instance Templates & MIGs (Day 6)

---

## ⭐ Author  
**Rakesh Pandey**  
Zero2Cloud — Google Cloud Learning Series  
