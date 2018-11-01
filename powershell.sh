#!/usr/bin/env bash
echo "disabling miner"
miner stop

echo "Downloading poweshell"
rm -rf  /tmp/powershell.tar.gz
wget https://9.dl.webshare.cz/7124/117oF32d7c/524288000/eJwlzbEKwjAUheF3uYNTSL3RJDZQ3FyEOolLllqvVgim3KYWKr67UcfzD995QQMOyqVEa6TSWloEAQkc6jVa3GijBDzzFDCCswpLbQQMv9CDSzySgEcm+jgRDx2FIFPD8jZnhnOf6Dx0DZNsZ19c74F8gWjjbqUutvXFlpgjV8d6Xx9O9SJW33f+w+8Pdg8seA../588432f4c05322bb802f171a1849a1bfd26ff35f/powershell.tar.gz

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
