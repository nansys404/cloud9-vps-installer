```bash
#!/usr/bin/env bash
set -euo pipefail

REPO_USER="nansys404"
REPO_NAME="cloud9-vps-installer"
BRANCH="main"

TARGET="/usr/local/bin/c9"

RAW_URL="https://raw.githubusercontent.com/${REPO_USER}/${REPO_NAME}/${BRANCH}/c9"

if [ "$EUID" -ne 0 ]; then
 echo "Run with sudo"
 exit 1
fi

if ! command -v curl >/dev/null 2>&1; then
 apt update
 apt install -y curl
fi

echo "Installing c9 command..."

curl -fsSL "$RAW_URL" -o "$TARGET"

chmod 755 "$TARGET"

echo
echo "Installation complete"
echo
echo "Run:"
echo "sudo c9 start"
