<pre>
# badgeuse-jommani
badgeuse est une appareil pour identifiers les personnelles de la société selon le bus et l'heur de auquelle il a pointé cree par geo.com

****************************************************************************************************
prepare SD card.
$ sudo rpi-update
$ sudo apt update
$ sudo apt full-upgrade
$ mkdir -p rfid
$ cd rfid
$ curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
$ sudo apt install -y nodejs
$ sudo apt-get install -y  build-essential
$ sudo npm install -g node-gyp
$ wget http://www.airspayce.com/mikem/bcm2835/bcm2835-1.49.tar.gz
$ tar -zxf bcm2835-1.49.tar.gz
$ cd bcm2835-1.49
$ ./configure
$ make
$ sudo make check
$ sudo make install
$ sudo modprobe spi_bcm2835
$ sudo apt-get install -y perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python
$ wget http://prdownloads.sourceforge.net/webadmin/webmin_1.850_all.deb
$ sudo dpkg --install webmin_1.850_all.deb
$ wget http://download.webmin.com/download/virtualmin/webmin-virtual-server_6.00.gpl_all.deb
$ sudo dpkg --install webmin-virtual-server_6.00.gpl_all.deb

webmin ==> theme ==> http://download.webmin.com/download/virtualmin/virtual-server-theme-9.3.wbt.gz

$ sudo apt-get --force-yes install -y apache2 apache2-doc libapache2-svn libsasl2-2 libsasl2-modules sasl2-bin php-pear php5 php5-cgi libapache2-mod-php5 php5-mysql apache2-suexec
$ nano etc/apache2/suexec/www-data
s|/var/www|/home

</pre>
