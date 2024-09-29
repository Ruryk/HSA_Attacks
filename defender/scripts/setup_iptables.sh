#!/bin/bash

# Setting up basic rules for protection via iptables

# 1. Protection against SYN Flood attacks (limiting SYN packets)
iptables -A INPUT -p tcp --syn -m limit --limit 1/s -j ACCEPT
iptables -A INPUT -p tcp --syn -j DROP

# 2. Protection against UDP Flood attacks (limiting UDP packets)
iptables -A INPUT -p udp -m limit --limit 10/s -j ACCEPT
iptables -A INPUT -p udp -j DROP

# 3. Protection against ICMP Flood attacks (ICMP packet restriction)
iptables -A INPUT -p icmp -m limit --limit 1/s -j ACCEPT
iptables -A INPUT -p icmp -j DROP

# 4. Protection against Ping of Death (blocking large ICMP packets)
iptables -A INPUT -p icmp --icmp-type echo-request -m length --length 65535 -j DROP

# 5. Block suspicious or corrupted packets
iptables -A INPUT -m state --state INVALID -j DROP

# 6. Only allow ports for web traffic (HTTP, HTTPS) and SSH
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j ACCEPT

# 7. Reject all other incoming packets
iptables -A INPUT -j DROP

# Saving iptables rules
iptables-save > /etc/iptables/rules.v4

echo "The iptables rules are successfully configured."
