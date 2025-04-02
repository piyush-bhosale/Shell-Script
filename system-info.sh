#!/bin/bash

echo "============================="
echo "🔍 System Information Report"
echo "============================="

# OS & Kernel
echo -e "\n🧠 OS and Kernel:"
lsb_release -a 2>/dev/null | grep Description
uname -r

# CPU Info
echo -e "\n🖥️ CPU Info:"
lscpu | grep -E 'Model name|Socket|Thread|Core|CPU\(s\)'

# Memory Info
echo -e "\n🧠 Memory (RAM):"
free -h

# Disk Usage
echo -e "\n💽 Disk Usage:"
df -hT --total | grep -E '^Filesystem|total'

# Uptime
echo -e "\n⏱️ Uptime:"
uptime -p

# Load Average
echo -e "\n📈 Load Average:"
cat /proc/loadavg

# Network Interfaces
echo -e "\n🌐 Network Interfaces:"
ip -brief address show

# Top 5 Memory Consuming Processes
echo -e "\n🔥 Top 5 Memory Consuming Processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6

# End of report
echo -e "\n✅ Report completed."
echo "============================="
