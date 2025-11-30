# 🧪 Day 8 Demo — Working with Google Cloud Storage (GCS)

This demo connects a Compute Engine VM with a GCS bucket using IAM service accounts.

---

# 🔹 Step 1 — Create a GCS Bucket (Console)
1. Go to **Cloud Storage → Buckets**  
2. Click **Create bucket**  
3. Choose a unique name  
4. Location: `asia-south1` (or your region)  
5. Storage Class: **Standard**  
6. Access Control: **Uniform**  
7. Click **Create**

---

# 🔹 Step 2 — Create a Service Account
1. IAM & Admin → Service Accounts  
2. Click **Create Service Account**  
3. Name: `gcs-demo-sa`  
4. Grant Role → **Storage Object Admin**  
5. Create  

---

# 🔹 Step 3 — Create a VM with Attached Service Account
1. Compute Engine → VM Instances → Create  
2. Name: `gcs-demo-vm`  
3. Region: Same as bucket  
4. Machine Type: `e2-micro`  
5. Identity → Service Account → `gcs-demo-sa`  
6. API Access → **Allow full access**  
7. Create  

---

# 🔹 Step 4 — Upload a File to Bucket
- Upload `hello.txt` to bucket

---

# 🔹 Step 5 — Connect to VM and Run Commands

### List bucket contents
