# Project-2020
* Set up IP
nano /etc/dhcpcd.conf 
* Edit this file
- interface eth0
- static ip_address=192.168.50.35/24
- static ip6_address=fd51:42f8:caae:d92e::ff/64
- static routers=192.168.50.1
- static domain_name_servers=192.168.50.1 8.8.8.8 fd51:42f8:caae:d92e::1
- Then: sudo reboot
* Open ssh in raspberry 
- sudo raspi-config
- Choose -> Interface Options -> SSH -> Enable -> Finish
- sudo reboot
- sudo chown motion:motion /var/run/motion
- console=serial0,115200 console=tty1 root=PARTUUID=e6c6c0ec-02 rootfstype=ext4 elevator=deadline fsck.repair=yes rootwait
- sudo apt-get ––purge remove motion
- /etc/motion/camera1.conf
# This config file was generated by motion 4.1.1
- camera_id = 1
- videodevice /dev/video0
- input -1
- target_dir /home/bkjaya1952/Videos/bkj/C1
- picture_filename CAM1_%v-%Y%m%d%H%M%S-%q
- stream_port 8081

#flip_axis v

# Install openvpn
- sudo apt-get update
- sudo apt-get install openvpn
* Copy file client.conf in /etc/openvpn/ 
* Copy file pass.txt in /var/www/
* Then run command:
- sudo openvpn /etc/openvpn/client.conf
# Setting Openvpn Server in Asus Router
- ![First](https://raw.githubusercontent.com/Eric-nguyen1402/image_project/master/Screenshot%20(32).png)
- At VPN details choose Advanced settings:
- Then setting follow this :
- ![Second](https://raw.githubusercontent.com/Eric-nguyen1402/image_project/master/Screenshot%20(34).png)
- In other to clients connect together, you must set the Users at Allows Clients table like this :
- ![Third](https://raw.githubusercontent.com/Eric-nguyen1402/image_project/master/Screenshot%20(36).png)
- 
