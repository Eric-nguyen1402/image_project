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
