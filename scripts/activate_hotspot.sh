
//Configure Wifi
cat eth_configuration >> 'interface wlan0

static ip_address=192.168.0.10/24

denyinterfaces eth0

denyinterfaces wlan0

' >>  /etc/dhcpcd.conf

//Configure DHCP Server
sudo mv /etc/dnsmasq.conf /etc/dnsmasq.conf.orig

echo
'interface=wlan0

dhcp-range=192.168.0.11,192.168.0.30,255.255.255.0,24h
'
>> /etc/dnsmasq.conf 

//Configure Hotspot Network
echo 
'
interface=wlan0

bridge=br0

hw_mode=g

channel=7

wmm_enabled=0

macaddr_acl=0

auth_algs=1

ignore_broadcast_ssid=0

wpa=2

wpa_key_mgmt=WPA-PSK

wpa_pairwise=TKIP

rsn_pairwise=CCMP

ssid=NETWORK

wpa_passphrase=PASSWORD


'
 >> /etc/hostapd/hostapd.conf