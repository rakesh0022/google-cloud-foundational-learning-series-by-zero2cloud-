# Day 05 — Google Cloud Load Balancer Explained | Application vs Network Load Balancer + Hands-On

**YouTube Video:** https://youtu.be/5pnExbg2nsY  
**Playlist:** https://www.youtube.com/playlist?list=PLaGQ5K8oDWBlgsDpviW2aYCzoHzyvLLeD  

---

## 📌 What You Will Learn
- Why load balancing is needed in cloud applications  
- What a Load Balancer actually does  
- How Google Cloud’s load balancer routes traffic  
- Difference → **Application LB (Layer 7)** vs **Network LB (Layer 4)**  
- Full hands-on: creating L7 & L4 load balancers  
- Understanding backend services, instance groups, health checks  

---

## 🧠 Why Cloud Load Balancing?
Page 3 of your PDF clearly shows the problem:  
**All requests hit one overloaded server while others sit idle**. :contentReference[oaicite:0]{index=0}  

This leads to:
- Slow response  
- VM crashes  
- Bad user experience  

Load balancing fixes this.

---

## 🌐 What Is a Cloud Load Balancer?
The diagram on Page 4 shows:  
Users → Website → **Load Balancer** → Multiple Servers :contentReference[oaicite:1]{index=1}  

A load balancer:
- Distributes traffic across servers  
- Ensures no single server overloads  
- Sends traffic only to healthy servers  
- Automatically fails over if a server crashes  
- Is fully managed by Google  

From transcript:  
> “It acts like a smart traffic controller of your app.” :contentReference[oaicite:2]{index=2}

---

## ⚙️ How Load Balancing Works (Behind the Scenes)
Page 5 of the PDF shows the full flow:  
Users → Internet → LB → Web Servers & Database Servers :contentReference[oaicite:3]{index=3}  

Transcript explanation:  
- User request reaches LB first  
- LB checks *server health*, *location*, *latency*  
- Routes traffic to the best backend  
- If one server becomes unhealthy → traffic shifts automatically  
:contentReference[oaicite:4]{index=4}  

---

## 🧩 Types of Load Balancers in Google Cloud
From transcript:  

### **1️⃣ Application Load Balancer (Layer 7)**
- Handles **HTTP/HTTPS**  
- Can do **path-based routing**, **hostname routing**  
- Example:  
  - `/videos` → backend group A  
  - `/images` → backend group B  
- Fully global  

### **2️⃣ Network Load Balancer (Layer 4)**
- Handles **TCP, UDP, SSL**  
- Extremely low latency  
- Useful for gaming servers, VPN gateways  
- Regional  

:contentReference[oaicite:5]{index=5}

---

## 🧪 Hands-On Lab

### **A. Application Load Balancer (Layer 7)**  
Steps (as shown in video):

1. Go to **Load Balancing → Create Load Balancer**  
2. Choose **HTTP/HTTPS → Global External Application Load Balancer**  
3. Configure **Frontend**  
   - Protocol: HTTP  
   - Port: 80  
4. Create **Backend Service**  
   - Backend type: Instance Group  
   - Protocol: HTTP  
   - Health Check: TCP/80  
5. Review & create  
6. Test using load balancer IP  

Transcript reference: LB returns traffic from different backend instances (PL1, PL2) upon refreshing. :contentReference[oaicite:6]{index=6}  

---

### **B. Network Load Balancer (Layer 4)**

Steps:

1. Create Load Balancer → **Network Load Balancer**  
2. Choose **Pass-through**  
3. Create **Backend Group**  
4. Create **Health Check**  
5. Create **Frontend**  
   - Use **Static IP**  
6. Deploy & test  

Transcript shows IPs returning pages from different backend nodes (28M4, 34CB). :contentReference[oaicite:7]{index=7}  

---

## 📂 Folder Structure
day-05-google-cloud-load-balancer/
│── README.md
│── summary.md
│── diagrams/ ← Add PDF images here
│── demo-scripts/
│ ├── application-lb-commands.sh
│ └── network-lb-commands.sh

---

## 📘 Additional Notes
- ALB = global, smart routing  
- NLB = regional, high-performance TCP/UDP  
- Health checks decide if a server should receive traffic  
- Instance groups enable autoscaling behind LBs  

---

## 🙌 Author
Rakesh Pandey — Zero 2 Cloud  
