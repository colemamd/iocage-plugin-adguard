#!/bin/sh


cd /tmp && curl -O https://static.adguard.com/adguardhome/release/AdGuardHome_freebsd_amd64.tar.gz
tar -xvzf AdGuardHome*.tar.gz -C /root
rm AdGuardHome*.tar.gz

chmod +x /usr/local/etc/rc.d/adguard
sysrc 'adguard_enable=YES'
service adguard start

echo "AdGuard Home is now installed" > /root/PLUGIN_INFO