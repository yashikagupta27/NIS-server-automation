# 1. Set NIS domain name (DO THIS FIRST)
sudo domainname mynisserver
echo "NISDOMAIN=mynisserver" | sudo tee -a /etc/sysconfig/network

# 2. Install packages
sudo yum install -y ypserv yp-tools rpcbind

# 3. Start rpcbind (required for NIS)
sudo systemctl enable rpcbind
sudo systemctl start rpcbind

# 4. Start ypserv
sudo systemctl enable ypserv
sudo systemctl start ypserv

# 5. Initialize NIS master server
sudo /usr/lib64/yp/ypinit -m
# When prompted: Press Ctrl+D, then type 'yes'

# 6. Initial map creation
cd /var/yp
sudo make

# 7. Create users
sudo useradd -m user1
sudo passwd user1

# 8. Update NIS maps with new user
cd /var/yp
sudo make

# 9. Verify setup
ypwhich
ypcat passwd
