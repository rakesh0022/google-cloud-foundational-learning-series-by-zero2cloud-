# 🧪 Day 8 Demo — VM + Cloud Storage (UI Only)

This demo shows how to connect a Compute Engine VM with Google Cloud Storage using IAM-based access.

---

# 🔑 Objectives
- Create a bucket  
- Create service account  
- Launch VM with SA  
- Access GCS from inside VM  
- Cleanup  

---

# 📝 Step 1 — Create a Cloud Storage Bucket
1. Go to **Cloud Storage → Buckets → Create**  
2. Enter unique bucket name  
3. Choose **Region** (same as VM for low latency)  
4. Keep **Storage Class: Standard**  
5. Access control → **Uniform**  
6. Click **Create**

---

# 📝 Step 2 — Create a Service Account
1. Go to **IAM & Admin → Service Accounts → Create**  
2. Name: `gcs-demo-sa`  
3. Assign role:  
   - **Storage Object Admin**  
4. Click Create → Done  

---

# 📝 Step 3 — Launch the Compute VM
1. Compute Engine → VM Instances → Create  
2. VM name: `gcs-demo-vm`  
3. Machine: `e2-micro`  
4. Identity → Service Account → select `gcs-demo-sa`  
5. Access scope → “Allow full access to Cloud APIs”  
6. Create  

---

# 📝 Step 4 — Interact with the Bucket from VM
SSH into VM and run:

### List objects
