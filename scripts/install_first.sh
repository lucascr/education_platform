//https://www.instructables.com/Raspberry-Pi-Wifi-Hotspot/
//Install and Update Raspbian
sudo apt-get update
sudo apt-get upgrade

//Install Hotspot 
sudo apt-get install hostapd
sudo apt-get install dnsmasq

sudo systemctl stop hostapd
sudo systemctl stop dnsmasq
