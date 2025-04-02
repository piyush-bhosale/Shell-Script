#!/bin/bash

echo "=============================="
echo "📦 Installing Netdata"
echo "=============================="

# Ensure we're running as root
if [ "$EUID" -ne 0 ]; then
  echo "❌ Please run as root: sudo ./install-netdata.sh"
  exit 1
fi

# Update system
echo "🔄 Updating system packages..."
apt update -y

# Install dependencies
echo "🔧 Installing dependencies..."
apt install -y curl git

# Download Netdata one-line installer
echo "⬇️ Running Netdata installer..."
bash <(curl -Ss https://my-netdata.io/kickstart.sh) --disable-telemetry

# Enable and start the service
echo "🚀 Starting Netdata service..."
systemctl enable netdata
systemctl start netdata

# Confirm installation
echo "✅ Netdata is installed!"
echo "🌐 Access it at: http://<your-server-ip>:19999"
