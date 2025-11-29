✅ 📄 Day 03 — VPC Network Basics in Google Cloud (Zero 2 Cloud Foundation | Day 3)

YouTube Video: https://youtu.be/1vAgf7XrgWk
Playlist: https://www.youtube.com/playlist?list=PLaGQ5K8oDWBlgsDpviW2aYCzoHzyvLLeD

📝 Overview (Simple Explanation)

In this video, we break down one of the most important pieces of Google Cloud — VPC Networks.
A VPC is your own private, secure network inside Google Cloud where all your resources live:
virtual machines, Kubernetes clusters, databases, and apps.
It decides how your systems talk to each other, how traffic flows, and what is allowed or blocked.

This episode takes you from explanation → hands-on demo → real-world scenarios.

Content sourced from transcript:

VPC is “your private neighborhood inside Google Cloud” 

[English (auto-generated)] VPC …

Everything runs inside VPC: VMs, GKE, App Engine, etc. 

[English (auto-generated)] VPC …

Routes + firewalls decide how traffic flows. 

[English (auto-generated)] VPC …

Custom vs Auto subnets explained with full live demo. 

[English (auto-generated)] VPC …

🎯 What You Will Learn

What a VPC is and why it’s the backbone of Google Cloud

Difference between Auto vs Custom subnets

How routes and firewalls work

How to create VPCs, subnets, and firewall rules

Why some VMs connect and others fail (SSH, ping, HTTP access)

Real-world understanding of ingress/egress, allow/deny rules

Hosting an NGINX website inside your VPC using firewall rules

🧠 Key Concepts Explained
1. What is a VPC?

Your private network inside Google Cloud

All your machines and services live inside it

Works like a small “internet of your own”

Can connect to your office/on-prem network via VPN or Interconnect
Source: 

[English (auto-generated)] VPC …

2. Auto vs Custom Subnets
Mode	Who creates subnets?	When to use
Auto mode	Google automatically creates subnets in every region	Learning, quick demos
Custom mode	You manually create subnets & IP ranges	Production, full control

You explained this clearly in the video — Auto = Google decides; Custom = You decide.
Source: 

[English (auto-generated)] VPC …

🔥 Hands-On Demo (What You Built in Video)
✔ Step 1 — View default VPC

Google automatically creates default VPC (auto subnet mode)

Default firewall rules: SSH, RDP, ICMP, Internet
Source: 

[English (auto-generated)] VPC …

✔ Step 2 — Create an Auto-Subnet VPC

Steps you performed:

Create VPC

Choose Automatic mode

Select default firewall rules (SSH + ICMP)

Create

✔ Step 3 — Create a Custom-Subnet VPC

Choose Custom

Create a subnet manually

Pick region + IP range

Create custom firewall rules separately

✔ Step 4 — Create Firewall Rules

Examples created in video:

Allow SSH (port 22)

Allow ICMP (ping)

Allow HTTP (port 80)

Allow all (for demo) – not recommended in real world

✔ Step 5 — Instance Behaviour

Default VPC VM → SSH works instantly

Custom VPC VM → SSH fails (because no firewall rule)

After adding rule → SSH works
Source: 

[English (auto-generated)] VPC …

✔ Step 6 — Host NGINX Website

Installed nginx

Accessed via public IP

HTTP failed initially → no firewall rule

After adding port 80 rule → site opened
Source: 

[English (auto-generated)] VPC …

📌 Demo Commands (Copy/Paste)
Create a VPC (auto subnet)
gcloud compute networks create demo-vpc-auto \
  --subnet-mode=auto

Create a VPC (custom subnet)
gcloud compute networks create demo-vpc-custom \
  --subnet-mode=custom

Create a Subnet
gcloud compute networks subnets create demo-subnet \
  --network=demo-vpc-custom \
  --region=us-west1 \
  --range=10.10.1.0/24

Create Firewall Rules

Allow SSH:

gcloud compute firewall-rules create allow-ssh \
  --network=demo-vpc-custom \
  --allow=tcp:22 \
  --source-ranges=0.0.0.0/0


Allow HTTP:

gcloud compute firewall-rules create allow-http \
  --network=demo-vpc-custom \
  --allow=tcp:80 \
  --source-ranges=0.0.0.0/0

🗂 Folder Contents

Inside this folder:

day-03-vpc-network-basics/
├── README.md
├── demo-scripts/
│   ├── vpc-commands.sh
│   └── firewall-examples.sh
└── diagrams/
    ├── vpc-overview.png (add)
    ├── routing-firewall.png (add)
    └── auto-vs-custom.png (add)

🔗 Resources & Extra Reading

Official VPC Docs: https://cloud.google.com/vpc/docs

Firewall Rules: https://cloud.google.com/vpc/docs/firewalls

Subnets: https://cloud.google.com/vpc/docs/vpc

👨‍💻 Author

Rakesh Pandey (Zero 2 Cloud)
Follow the full playlist:
https://www.youtube.com/playlist?list=PLaGQ5K8oDWBlgsDpviW2aYCzoHzyvLLeD
