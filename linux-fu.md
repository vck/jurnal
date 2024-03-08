WIFI Connection (debian)

Switch to super user mode
$ sudo su

Open the WIFI
$ nmcli r wifi on

Scan WIFI
$ nmcli dev wifi

Connect to WIFI network
$ nmcli dev wifi connect “wifi_name” password “wifi_password”
