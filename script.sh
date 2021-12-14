#! /bin/bash 

# Install packages


#sudo apt-get update
#sudo apt-get upgrade -y
#sudo apt-get install motion
# ENABLE in config
CONFIG="/boot/config.txt"
MOTION="/etc/motion/motion.conf"
MOTIONON="/etc/default/motion"
CAMERA1="/etc/motion/camera1-dist.conf"
CAMERA2="/etc/motion/camera2-dist.conf"
CAMERA3="/etc/motion/camera3-dist.conf"
CAMERA4="/etc/motion/camera4-dist.conf"
INTERFACE="/etc/network/interfaces"
APACHE="/etc/apache2/apache2.conf"
APACHEPORT="/etc/apache2/ports.conf"
CMDLINE="/boot/cmdline.txt"
# if a line containing start_x exists
#if grep -Fq "start_x" $CONFIG
#then
#	echo "start_x exists"
#else
#	echo "start_x not found"
#	sudo sh -c "echo 'start_x=1' >> /boot/config.txt"
#	sudo sh -c "echo 'gpu_mem=128' >> /boot/config.txt"
#	sudo sh -c "echo 'dtoverlay=w1-gpio' >> /boot/config.txt"
#	sudo sh -c "echo 'dtoverlay=mcp2515-can0,oscillator=10000000,interrupt=25' >> /boot/config.txt"
#	sudo sh -c "echo 'dtoverlay=spi-bcm2835-overlay' >> /boot/config.txt"
#	sudo sh -c "echo 'dtoverlay=spi1-1cs' >> /boot/config.txt"
#	sudo sh -c "echo 'dtoverlay=pi3-disable-bt' >> /boot/config.txt"
#	sudo sh -c "echo 'dtoverlay=disable-wifi' >> /boot/config.txt"
#	sudo sh -c "echo 'dtoverlay=pi3-miniuart-bt' >> /boot/config.txt"
#fi
# if a line containing daemon exists, replace whole line
#if grep -Fq "daemon" $MOTION
#then
#	echo  "daemon  exists"
#	sudo sh -c "sed -i 's/daemon off/daemon on/g' $MOTION"
#else
#	sudo sh -c "echo 'daemon on' >> /etc/motion/motion.conf"
#fi
# if a line containing stream quality exists, replace whole line
#if grep -Fq "stream_quality" $MOTION
#then
#        echo  "stream_quality  exists"
#        sudo sh -c "sed -i 's/stream_quality 50/stream_quality 100/g' $MOTION"
#else
#        sudo sh -c "echo 'stream_quality 100' >> /etc/motion/motion.conf"
#fi
# if a line containing stream_maxrate exists, replace whole line
#if grep -Fq "stream_maxrate" $MOTION
#then
#        echo  "stream_maxrate  exists"
#        sudo sh -c "sed -i 's/stream_maxrate 1/stream_maxrate 30/g' $MOTION"
#else
#        sudo sh -c "echo 'stream_maxrate 30' >> /etc/motion/motion.conf"
#fi
# if a line containing stream_localhost exists, replace whole line
#if grep -Fq "stream_localhost" $MOTION
#then
#        echo  "stream_localhost  exists"
#        sudo sh -c "sed -i 's/stream_localhost on/stream_localhost off/g' $MOTION"
#else
#        sudo sh -c "echo 'stream_localhost off' >> /etc/motion/motion.conf"
#fi
# if a line containing stream_motion exists, replace whole line
#if grep -Fq "stream_motion" $MOTION
#then
#        echo  "stream_motion  exists"
#        sudo sh -c "sed -i 's/stream_motion on/stream_motion off/g' $MOTION"
#else
#        sudo sh -c "echo 'stream_motion off' >> /etc/motion/motion.conf"
#fi
# if a line containing webcontrol_localhost exists, replace whole line
#if grep -Fq "webcontrol_localhost" $MOTION
#then
#        echo  "webcontrol_localhost  exists"
#        sudo sh -c "sed -i 's/webcontrol_localhost on/webcontrol_localhost off/g' $MOTION"
#else
#        sudo sh -c "echo 'webcontrol_localhost off' >> /etc/motion/motion.conf"
#fi
# if a line containing framerate exists, replace whole line
#if grep -Fq "framerate" $MOTION
#then
#        echo  "framerate  exists"
#        sudo sh -c "sed -i 's/framerate 2/framerate 1500/g' $MOTION"
#else
#        sudo sh -c "echo 'framerate 1500' >> /etc/motion/motion.conf"
#fi
# if a line containing start_motion_daemon exists, replace whole line
#if grep -Fq "start_motion_daemon" $MOTIONON
#then
#        echo  "start_motion_daemon  exists"
#        sudo sh -c "sed -i 's/start_motion_daemon=no/start_motion_daemon=yes /g' $MOTIONON"
#else
#        sudo sh -c "echo 'start_motion_daemon=yes' >> /etc/default/motion"
#fi

# if a line containing camera_id exists
#if grep -Fq "camera_id" $CAMERA1
#then
#	echo "camera_id1 exists"
#	sudo sh -c "sed -i '/camera_id/s/#//g' $CAMERA1"
#else
#	sudo sh -c "echo 'camera_id=1' >> /etc/motion/camera1-dist.conf"
#fi

# if a line containing camera_id exists
#if grep -Fq "camera_id" $CAMERA2
#then
#	echo "camera_id2 exists"
#	sudo sh -c "sed -i '/camera_id/s/#//g' $CAMERA2"
#else
#	sudo sh -c "echo 'camera_id=2' >> /etc/motion/camera2-dist.conf"
#fi
# if a line containing videodevice exists
#if grep -Fq "videodevice" $CAMERA2
#then
#	echo "videodevice2 exists"
#	sudo sh -c "sed -i 's/video1/video2/g' $CAMERA2"
#else
#	sudo sh -c "echo 'videodevice /dev/video2' >> /etc/motion/camera2-dist.conf"
#fi
# if a line containing camera_id exists
#if grep -Fq "camera_id" $CAMERA3
#then
#       echo "camera_id3 exists"
#       sudo sh -c "sed -i '/camera_id/s/#//g' $CAMERA3"
#else
#       sudo sh -c "echo 'camera_id=3' >> /etc/motion/camera3-dist.conf"
#fi
# if a line containing videodevice exists
#if grep -Fq "videodevice" $CAMERA3
#then
#        echo "videodevice3 exists"
#        sudo sh -c "sed -i 's/video2/video4/g' $CAMERA3"
#else
#        sudo sh -c "echo 'videodevice /dev/video4' >> /etc/motion/camera3-dist."
#fi
# if a line containing camera_id exists
#if grep -Fq "camera_id" $CAMERA4
#then
#       echo "camera_id4 exists"
#       sudo sh -c "sed -i '/camera_id/s/#//g' $CAMERA4"
#else
#       sudo sh -c "echo 'camera_id=4' >> /etc/motion/camera4-dist.conf"
#fi
# if a line containing videodevice exists
#if grep -Fq "videodevice" $CAMERA4
#then
#        echo "videodevice4 exists"
#        sudo sh -c "sed -i 's/video3/video6/g' $CAMERA4"
#else
#        sudo sh -c "echo 'videodevice /dev/video6' >> /etc/motion/camera4-dist."
#fi
# if a line cotaining camera1.conf exists
#if grep -Fq "camera1.conf" $MOTION
#then
#	echo "camera1.conf exists"
#	sudo sh -c "sed -i 's/camera1.conf/camera1-dist.conf/g' $MOTION"
#	sudo sh -c "sed -i 's/camera2.conf/camera2-dist.conf/g' $MOTION"
#	sudo sh -c "sed -i 's/camera3.conf/camera3-dist.conf/g' $MOTION"
#	sudo sh -c "sed -i 's/camera4.conf/camera4-dist.conf/g' $MOTION"
#	sudo sh -c "sed -i '/camera1/s/;//g' $MOTION"
#	sudo sh -c "sed -i '/camera2/s/;//g' $MOTION"
#	sudo sh -c "sed -i '/camera3/s/;//g' $MOTION"
#	sudo sh -c "sed -i '/camera4/s/;//g' $MOTION"
#else
#	sudo sh -c "echo 'camera /etc/motion/camera1-dist.conf' >> /etc/motion/motion.conf"
#fi
#sudo service motion start
# Setting can bus 
#sudo apt-get install can-utils
#if a line containing can0 exists
#if grep -Fq "can0" $INTERFACE
#then 
#	echo "can0 exists"
#else
#	sudo sh -c "echo 'auto can0' >> /etc/network/interfaces"
#	sudo sh -c "echo 'iface can0 can static' >> /etc/network/interfaces"
#	sudo sh -c "echo 'bitrate 125000' >> /etc/network/interfaces"
#fi
# Setting APACHE
#sudo apt-get update
#sudo apt-get upgrade -y
#sudo apt install apache2 -y
#if grep -Fq "Indexes " $APACHE
#then
#	echo "Indexes exist"
#	sudo sh -c "sed -i 's/AllowOverride None/AllowOverride All/g' $APACHE"
#fi
# When installing php remember: At the last step will occur a problem :
# You must choose IGNORE to pass this alert.
#sudo apt-get update
#sudo apt-get upgrade -y
#sudo apt install php libapache2-mod-php -y
#sudo apt install mariadb-server php-mysql -y 
#sudo apt install phpmyadmin
#sudo service apache2 restart 
#sudo phpenmod mysqli
#if grep -Fq "APACHE_PID_FILE" $APACHE
#then
#	echo "APACHE_PIC_FILE exists"
#	sudo sh -c "echo 'Include /etc/phpmyadmin/apache.conf' >> /etc/apache2/apache2.conf"
#fi
# After completely installing, you must run this command : sudo mysql -u root -p
# Then MariaDB interface will appear, past this command : ALTER USER 'root'@'localhost' IDENTIFIED BY 'raspberry';
# Finish installing 
#if grep -Fq "Listen" $APACHEPORT
#then
#	echo "Listen exists"
#	sudo sh -c "sed -i 's/80/8000/g' $APACHEPORT"
#fi
# Edit file cmline for using GPS 
#if grep -Fq "console" $CMDLINE
#then 
#	echo "console exits"
#	sudo sh -c "sed -i '1d' $CMDLINE"
#	sudo sh -c "echo 'root=PARTUUID=b6d6036a-02 rootfstype=ext4 elevator=deadline fsck.repair=yes rootwait' >> /boot/cmdline.txt"
#else
#	echo "console not exits"
#fi
# After finishing make new file python in /var/www/ then copy program in these folder
 sudo apt-get install python3-pymysql
sudo pip3 install pyserial

