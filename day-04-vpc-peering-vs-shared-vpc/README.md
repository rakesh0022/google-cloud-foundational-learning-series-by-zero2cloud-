VPC Peering vs Shared VPC Explained (Day 4 | Zero 2 Cloud)

📺 YouTube Video: https://youtu.be/6LWY200n8gU
▶️ Playlist: https://www.youtube.com/playlist?list=PLaGQ5K8oDWBlgsDpviW2aYCzoHzyvLLeD

📌 Summary (Beginner Friendly)

In this video, we break down two important Google Cloud networking concepts:

VPC Peering — connecting two VPC networks privately

Shared VPC — using one central VPC across multiple projects

You will understand why these features exist, how they work, and when to use them using simple examples, real-life analogies, and hands-on demonstrations.

Transcription used:


[English (auto-generated)] VPC …


PPT used:


Day4_GoogleCloud_VPC_Peering_Sh…

🧩 Topics Covered
1️⃣ What is VPC Peering?

VPC Peering connects two VPC networks privately using internal IPs, without internet exposure.

Simple analogy:

“You and your friend have separate Wi-Fi networks, but you add a private cable between both homes.”

Key Peering Benefits:

🔒 No public internet required

⚡ Very low latency

🧱 Each VPC keeps its own firewall & routes

🧭 Great for cross-team or multi-project communication

Peering Limitations:

❌ No overlapping CIDR ranges allowed

❌ No transitive communication (A↔B and B↔C ≠ A↔C)

✔️ Both sides must accept the peering to activate

2️⃣ What is Shared VPC?

Shared VPC allows multiple GCP projects to use one centrally managed VPC.

Analogy:

“An office building where different departments (projects) share one big secure network managed by the IT team.”

Shared VPC Roles:

Organization Admin → overall control

Shared VPC Admin → configures host + service projects

Service Project Admin → creates VMs inside shared subnets

How Shared VPC Works:

Choose a Host Project

Create VPC + subnets inside host project

Attach Service Projects

Share specific subnets

Service projects create VMs inside the shared VPC

Benefits:

🎯 Centralized network + security

🔐 Strong IAM-based access control

💸 Simple, clean billing

📈 Scalable for enterprise teams

🧪 Hands-On Demo Summary

This video demonstrates:

✔️ VPC Peering Demo

Created two VPCs

Tested communication (internal fail before peering, success after)

Showed how to initiate/accept peering requests

Verified internal IP ping works after peering

✔️ Shared VPC Demo Explanation

Since Shared VPC requires an Organization, the video uses a real-world blog flow to explain:

How to set up a host project

How to share subnets

How service projects attach and create resources

How to choose shared networks inside VM creation

🛠 Commands / Actions Used in Video

Although this video is GUI-driven, here are the high-level steps:

🧩 To Create VPC Peering:

Go to VPC Network → VPC Network Peering

Create peering from VPC-A → VPC-B

Create peering from VPC-B → VPC-A

Status becomes ACTIVE

🧩 To Test Before Peering:

SSH into VM-A

Try pinging VM-B internal IP → ❌ fails

🧩 After Peering:

Internal ping → ✔️ succeeds

🧩 Shared VPC Setup:

(Conceptual Only — requires organization)

Select Host Project

Enable Shared VPC

Share subnet(s)

Attach service projects

Create VM in service project using Shared Subnets

📁 Files in This Folder

Day4_GoogleCloud_VPC_Peering_SharedVPC_Zero2Cloud.pptx (slides used in video)

transcript.txt (uploaded transcript used for building this README)

diagrams/ (You can place PPT diagrams here)

📚 Useful Reading

GCP VPC Peering Docs

GCP Shared VPC Docs

Zero 2 Cloud Playlist

👨‍💻 Author

Rakesh — Zero 2 Cloud
Helping beginners learn Google Cloud the right way — with hands-on practice.
