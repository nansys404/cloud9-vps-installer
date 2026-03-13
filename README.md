# Cloud9 VPS Auto Installer using Docker

Installer sederhana untuk menjalankan **Cloud9 IDE** di VPS **Ubuntu / Debian** menggunakan **Docker**.

Script ini membuat command global `c9` untuk mengontrol Cloud9 dengan mudah.

![Linux](https://img.shields.io/badge/Linux-Ubuntu%20%7C%20Debian-blue)
![Docker](https://img.shields.io/badge/Docker-required-blue)
![License](https://img.shields.io/badge/License-MIT-green)
![Maintained](https://img.shields.io/badge/Maintained-yes-brightgreen)

Simple installer to run **Cloud9 IDE** on **Ubuntu / Debian VPS** using **Docker**.

This project creates a global command **`c9`** to easily manage Cloud9.

---

# Features

- Auto install **Docker (official)**
- Auto install **Docker Compose plugin**
- Auto install & enable **UFW firewall**
- Auto open Cloud9 port
- Auto detect **IPv4 & IPv6**
- Display valid access URLs
- **Idempotent** (safe to run multiple times)
- Ready for **fresh Ubuntu/Debian VPS**

---

# Supported Systems

Tested on:

- Ubuntu 20.04+
- Ubuntu 22.04+
- Ubuntu 24.04+
- Debian 11+
- Debian 12+

---

# Quick Install

Run this command:

```bash
curl -fsSL https://raw.githubusercontent.com/nansys404/cloud9-vps-installer/main/install.sh | sudo bash
```

Start Cloud9:

```bash
sudo c9 start
```

---

# Example Output

```
======================================

Cloud9 Running!

IPv4 : http://SERVER_IP:8080
IPv6 : http://[SERVER_IPV6]:8080

Login: admin / your-password

======================================
```

---

# Command Usage

| Command | Description |
|------|-------------|
| `c9 start` | Start Cloud9 |
| `c9 stop` | Stop Cloud9 |
| `c9 restart` | Restart Cloud9 |
| `c9 status` | Check container status |
| `c9 logs` | Show container logs |
| `c9 setpass` | Change username/password |
| `c9 setport 9000` | Change port |

---

# Default Login

```
username: admin
password: anan
```

After installation change password:

```bash
sudo c9 setpass
sudo c9 restart
```

---

# Configuration

Config file location:

```
/root/.c9.env
```

Example configuration:

```
PORT=8080
TZ=Asia/Jakarta
C9_USER=admin
C9_PASS=anan
CONTAINER_NAME=cloud9
```

---

# Workspace Directory

Your Cloud9 workspace is stored at:

```
/root/c9/workspace
```

---

# Troubleshooting
NOTE: ( other case, you need to add open ports in your VPS dashboard )
## Port already used

Change port:

```bash
sudo c9 setport 9000
sudo c9 restart
```

## Check logs

```bash
sudo c9 logs
```

## Check container

```bash
sudo c9 status
```

---

# Uninstall

Stop Cloud9:

```bash
sudo c9 stop
```

Remove command:

```bash
sudo rm -f /usr/local/bin/c9
```

Remove data:

```bash
sudo rm -rf /root/c9 /root/.c9.env
```

---

# License

MIT License

Copyright (c) 2026 nansys404
