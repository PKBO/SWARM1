#!/bin/bash
# 

echo "disabling miner"  |
miner stop  | 

echo "installing poweshell"  | 
screen -dm -S myscreenname wget https://github.com/PowerShell/PowerShell/releases/download/v6.1.0/powershell-6.1.0-linux-x64.tar.gz -O /tmp/powershell.tar.gz  | 
sudo mkdir -p /opt/microsoft/powershell/6.1.0  | 
sudo tar zxf /tmp/powershell.tar.gz -C /opt/microsoft/powershell/6.1.0  | 
sudo chmod +x /opt/microsoft/powershell/6.1.0/pwsh  |  
sudo ln -s /opt/microsoft/powershell/6.1.0/pwsh /usr/bin/pwsh  | 
sudo rm -rf /tmp/powershell.tar.gz  | 
screen -dm -S myscreenname pwsh  |  

echo "Deleting outdated custom miner" | 
rm -rf /hive/custom | 
mkdir /hive/custom  | 
