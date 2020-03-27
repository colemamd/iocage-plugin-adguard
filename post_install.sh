#!/bin/sh


cd /tmp && curl -s https://api.github.com/repos/AdguardTeam/AdGuardHome/releases/latest | grep "AdguardHome_freebsd_amd64.tar.gz" | cut -d : -f 2,3 | tr -d \" | wget -qi -
sudo tar -xvzf AdGuardHome*.tar.gz -C /root
sudo rm AdGuardHome*.tar.gz

sudo chmod +x /usr/local/etc/rc.d/adguard
sudo sysrc 'adguard_enable=YES'
service adguard start

echo "AdGuard Home is now installed" > /root/PLUGIN_INFO