# 1. Set NIS domain name (DO THIS FIRST)
sudo domainname mynisserver
echo "NISDOMAIN=mynisserver" | sudo tee -a /etc/sysconfig/network

# 2. Install all required packages
sudo yum install -y ypbind yp-tools nss_nis rpcbind

# 3. Start rpcbind (required for NIS client)
sudo systemctl enable rpcbind
sudo systemctl start rpcbind

# 4. Configure NIS server
sudo nano /etc/yp.conf
# Add this line:
domain mynisserver server 10.0.1.136

# 5. Configure NSS switch
sudo nano /etc/nsswitch.conf
# Change these lines:
passwd:     files nis
group:      files nis
shadow:     files nis
hosts:      files dns nis

# 6. Start ypbind
sudo systemctl enable ypbind
sudo systemctl start ypbind

# 7. Verify client is working
ypwhich
ypcat passwd
getent passwd user1
