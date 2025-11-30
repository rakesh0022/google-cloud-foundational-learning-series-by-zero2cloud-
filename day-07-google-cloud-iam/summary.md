# Day 7 — IAM Summary (For On-Video Teaching)

## 🎯 What is IAM?
IAM decides **who can access what** in Google Cloud.

## 🧩 IAM Components
1. **Identity** — user, service account, group  
2. **Roles** — a bundle of permissions  
3. **Permissions** — actual actions (ex: start VM)

## 🔐 Types of Roles
- **Basic**: Owner, Editor, Viewer  
- **Predefined**: thousands of ready-made roles  
- **Custom**: you pick permissions manually  

## ⭐ Best Practices
- Always use **least privilege**  
- Prefer **predefined roles**  
- Use **custom roles** only when needed  

## 🚫 Bad Practice
Don’t give **Editor** or **Owner** to everyone.

## 🧰 PAM (Privileged Access Management)
- Give **temporary** permissions  
- Ideal for production support  
- Automatically revoked  

## 🧪 Demo Covered
- Assign roles  
- Create custom role  
- Use PAM for temporary Cloud Run access  

## 🎬 Key Takeaway
IAM is the **security backbone** of Google Cloud.  
Mastering IAM = mastering cloud security.
