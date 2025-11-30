# Day 05 — Summary (For Teaching)

## 🔥 Why Load Balancing?
- Prevents single VM overload
- Spreads traffic across servers
- Improves speed & uptime

## 🌐 What Is a Load Balancer?
- Smart traffic controller
- Sends traffic to healthy servers
- Auto-failover if a server crashes

## ⚙️ How It Works
- User → Load Balancer → Best backend
- Chooses backend using:
  - Health
  - Latency
  - Location

## 🧩 Types of Load Balancers
### 1️⃣ Application Load Balancer (L7)
- HTTP / HTTPS
- Path-based routing
- Global
- Best for websites & APIs

### 2️⃣ Network Load Balancer (L4)
- TCP / UDP
- Ultra-low latency
- Best for gaming, VPN, real-time apps

## 🧪 Hands-On Highlights
- Create backend instance group
- Create health check
- Create frontend (HTTP/80 or TCP/80)
- For L7 → Global LB  
- For L4 → Regional LB  
- Test IP to see backend switching

## 🎯 Key Takeaways
- ALB = smart, global, path routing  
- NLB = fast, simple, regional  
- Both improve performance & reliability  
