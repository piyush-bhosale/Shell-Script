# 📦 DevOps Utility Scripts – System Info & Netdata Monitoring

This repository contains two essential DevOps utility scripts to help you monitor and inspect Linux-based infrastructure (specifically Ubuntu/Debian).

These tools are helpful during:
- Pre-deployment system validation
- CI/CD runner setup
- Monitoring integration
- Debugging slow systems or agent nodes

---

## 🧠 Included Scripts

| Script Name         | Purpose |
|---------------------|---------|
| `system-info.sh`     | Collects system diagnostics (CPU, RAM, Disk, Network, Top processes) |
| `install-netdata.sh` | Installs Netdata for real-time monitoring via web dashboard |

---

## 🔍 `system-info.sh` — System Metrics Snapshot

### 📑 Description:
This script provides a quick system health report including:

- OS and kernel version
- CPU model and core/thread count
- Total & free memory (RAM)
- Disk usage (by mount points)
- Uptime and load average
- Network interfaces
- Top memory-consuming processes

### ▶️ How to Run:
```bash
chmod +x system-info.sh
chmod +x install-netdata.sh

./system-info.sh
./install-netdata.sh
