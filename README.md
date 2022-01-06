# Project-2020-2021
## Install Raspberry Pi OS Lite
Use the [Raspberry Pi Imager](https://www.raspberrypi.org/downloads.../) to install Raspberry Pi OS Lite on SD Card.
## Set up IP and use SSH to connect Raspberry Pi
* Open file config.txt in SD Card and add this line.
```bash
enable_uart=1
```
Now you can use Raspberry via throughout UART with (COMPORT and BAURATE = 115200)
* Login 
```bash
raspberrypi login: pi
password: raspberry
```
* Set up IP
```bash
nano /etc/dhcpcd.conf
```
Edit this file
```bash
interface eth0
static ip_address=192.168.50.35/24
static ip6_address=fd51:42f8:caae:d92e::ff/64
static routers=192.168.50.1
static domain_name_servers=192.168.50.1 8.8.8.8 fd51:42f8:caae:d92e::1
```
* Open ssh in raspberry
```bash 
sudo raspi-config
```
Choose -> Interface Options -> SSH -> Enable -> Finish
Then
```bash
sudo reboot
```
## Set up all applications in Raspberry Pi
Download file [script.sh](https://github.com/Eric-nguyen1402/image_project/blob/master/script.sh) and run it.
```bash
sudo chmod +x script.sh
sudo ./script.sh
```
- When setting up database. Please choose Apache2 
- Congigure database for phpmyadmin with dbconfig-common: Yes
- My SQL application password for phpmyadmin : raspberry
* When installing PHP in the last step will occur a notice
* PLease choose IGNORE to pass this step.
* After completely installing, run this command 
```bash
sudo mysql -u root -p
```
- Enter password: raspberry
- Then MariaDB interface will appear, copy this text
```bash
ALTER USER 'root'@'localhost' IDENTIFIED BY 'raspberry';
```
## Set up and check Camera 
Run this command to check all cameras 
```bash
v4l2-ctl --list-devices
```
Check settings in camera1-dist.conf. 
- Run
```bash
sudo nano /etc/motion/camera1-dist.conf
```
If it is different from below information, you need to change it in order to be suitable with camera file.
```bash
camera_id = 1
videodevice /dev/video0
input -1
target_dir /home/bkjaya1952/Videos/bkj/C1
picture_filename CAM1_%v-%Y%m%d%H%M%S-%q
stream_port 8081
```
Run camera service. And check it working or not by using link hostname_ip:8081(Ex: 192.168.1.16:8081)
```bash
sudo service motion start
```
## Create website
Firstly, check database is working or not by entering the hostname_ip. If the webiste shows this page, it is successful.
![image](https://raw.githubusercontent.com/Eric-nguyen1402/image_project/master/Screenshot%20(7).png)
- Remove file index.html
```bash
cd /var/www/html
sudo rm index.html
```
- Copy [code_web](https://github.com/Eric-nguyen1402/Web_control) into var/www/html
- Check the link and port listening are working or not: hostname_ip:port
![image](https://raw.githubusercontent.com/Eric-nguyen1402/image_project/master/Screenshot%20(9).png)
## Create database with phpmyadmin
Access to the phpmyadmin via link hostname_ip:port/phpmyadmin
![image](https://raw.githubusercontent.com/Eric-nguyen1402/image_project/master/Screenshot%20(11).png)
- A
## Install openvpn
* Copy file [client.conf](https://github.com/Eric-nguyen1402/image_project/blob/master/client.conf) into /etc/openvpn/ 
* Copy file pass.txt into /var/www/
* Then run command:
```bash
sudo openvpn /etc/openvpn/client.conf
```
## Setting Openvpn Server in Asus Router
- ![First](https://raw.githubusercontent.com/Eric-nguyen1402/image_project/master/Screenshot%20(32).png)
- At VPN details choose Advanced settings:
- Then setting follow this :
- ![Second](https://raw.githubusercontent.com/Eric-nguyen1402/image_project/master/Screenshot%20(34).png)
- In other to clients connect together, you must set the Users at Allows Clients table like this :
- ![Third](https://raw.githubusercontent.com/Eric-nguyen1402/image_project/master/Screenshot%20(36).png)
- Assign static IP for OpenVPN:
1. Login into ASUS Router (username + Password)
2. Type: cd /jffs/scripts
3. Type: cat clientconnect.sh
4. Copy this text:
- #!/bin/sh
- if["$username"="abcd"];
- then
-   echo "ifconfig-push 10.8.0.6 10.8.0.5">>$1
- elif["$username"="abc"];
- then
-   echo "ifconfig-push 10.8.0.22 10.8.0.21">>$1
- fi
