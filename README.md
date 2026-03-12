# Cloud9 VPS Installer

Simple and practical installer to run **Cloud9 IDE** on **Ubuntu/Debian VPS** using **Docker**.

This project provides a global `c9` command to install, manage, and access Cloud9 quickly.

## Features

- Auto install Docker from the official Docker repository
- Auto install Docker Compose plugin
- Auto install and enable UFW firewall
- Auto open the Cloud9 port
- Auto detect public IPv4 and IPv6
- Display valid access URLs for browser
- Idempotent and safe to re-run
- Ready for fresh Ubuntu/Debian VPS

## Supported Systems

Tested for:

- Ubuntu 20.04+
- Ubuntu 22.04+
- Ubuntu 24.04+
- Debian 11+
- Debian 12+

## Quick Install

Run:

```bash
curl -fsSL https://raw.githubusercontent.com/nansys404/cloud9-vps-installer/main/install.sh | sudo bash
