# Day 3 — Summary

## 🎯 Topic: VPC Network Basics

### What viewers should learn:
- What a VPC is (simple analogy).
- Difference between auto subnet vs custom subnet.
- How routing + firewall rules work.

### Key Talking Points:
- VPC = your private neighborhood inside Google Cloud.
- All resources (VM, GKE, Cloud Run internal) live in VPC.
- Auto subnet:
  - Google creates subnets for all regions automatically.
- Custom subnet:
  - You choose region + IP range manually.
- Firewall Rules:
  - SSH → port 22
  - HTTP → port 80
  - ICMP → ping
- Demo:
  - Create VPC auto + custom
  - Create firewall rules
  - Show SSH success/failure based on rules

### Micro Summary for Pace:
- VPC = private network
- Auto vs Custom subnet
- Routing + firewall
- Hands-on demo steps
