nano /etc/resolv.conf #make sure if safe, use 8.8.8.8 for name server
nano /etc/hosts #make sure is not redirecting
visudo #make sure sudoers file is clean. There should be no "NOPASSWD"
passwd --lock root
cut -d: -f1,3 /etc/passwd | egrep ':[0-9]{4}$' | cut -d: -f1 > /tmp/listofusers
echo root >> /tmp/listofusers
nano /tmp/listofusers
nano /etc/lightdm/lightdm.conf #Disallow Guest
nano /etc/ssh/sshd_config
sudo service ssh restart


