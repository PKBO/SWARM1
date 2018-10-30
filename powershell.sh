#!/usr/bin/env bash
echo "disabling miner"
miner stop

echo "Downloading poweshell"
rm -rf  /tmp/powershell.tar.gz
wget https://github.com/PowerShell/PowerShell/releases/download/v6.1.0/powershell-6.1.0-linux-x64.tar.gz -O /tmp/powershell.tar.gz

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
rm -rf /root/powershell2.sh