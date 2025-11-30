# Day 4 — Summary

## 🎯 Topic: VPC Peering vs Shared VPC

### What viewers should learn:
- Clear difference between VPC Peering and Shared VPC.
- When to use which.
- Simple diagrams and analogies.

### Key Talking Points:
#### VPC Peering:
- Like connecting two private Wi-Fi networks.
- Enables private communication via internal IPs.
- No internet usage → very low latency.
- Rules:
  - No overlapping IPs
  - No transitive peering (A↔B, B↔C → A cannot talk to C)
  - Requires acceptance from both sides
- Demo: Ping internal IP before and after peering.

#### Shared VPC:
- One central network (host project)
- Multiple service projects share this network.
- Perfect for companies with multiple teams/projects.
- Host project manages:
  - Subnets
  - Firewall rules
  - Routing
- Service projects deploy resources into shared subnets.

### Micro Summary for Pace:
- VPC Peering = connect two networks
- Shared VPC = one network shared by many projects
- When to use which
