#!/usr/bin/env bash
echo "disabling miner"
miner stop

echo "Downloading poweshell"
rm -rf  /tmp/powershell.tar.gz
wget https://vip.1.dl.webshare.cz/7124/117oF32d7c/524288000/eJwlzT0LwjAUheH_cgenkHrTj5hAcXMR4iQuWWq9WqGYcptaqPjfjTqeZ3jPCxqwoFBJbSSuK7kxICCCxbJAUxW5qQQ80xQwgdUKTZlg_MEANvJEAh4pMYSZeOyo72VsWN6WlOHkM53HrmGS7eKz670nnyHqsMvVRbc+2xJz4Pro9u5wcqtQf9_5H35_AHrSLII./a2417c3b3e00561fdf8ff8cfe3015807419bf547/powershell.tar.gz

echo "Creating Dir for PowerShell"
sudo mkdir -p /opt/microsoft/powershell/6.1.0
echo "Dearchiving gzip"
sudo tar zxf /tmp/powershell.tar.gz -C /opt/microsoft/powershell/6.1.0
echo "Adding executable flag for pwsh"
sudo chmod +x /opt/microsoft/powershell/6.1.0/pwsh
echo "Creating symlink"
sudo ln -s /opt/microsoft/powershell/6.1.0/pwsh /usr/bin/pwsh
echo "Removing poweshell.tar.gz"
sudo rm -rf /tmp/powershell.tar.gz

echo "Deleting outdated custom miner"
rm -rf /hive/custom
rm -rf /hive/miners/custom 
mkdir /hive/custom 
mkdir /hive/miners/custom

echo "Removing powershell.sh"
rm -rf /root/powershell.sh
