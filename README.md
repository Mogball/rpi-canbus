## Command-line Connect to Wi-fi

To access Wi-fi from the command line, run

```bash
sudo raspi-config
```

Select **Network Options** and then **Wi-fi**. If you are
prompted for a country, select `CA`, then enter the network
SSID and password.

# SSH Server Enable

From `sudo raspi-config` navigate **Interfacing Options**
and **SSH** and enable the SSH server.

## Local SSH Access

On the Raspberry Pi run `ifconfig | grep "inet"` and use
and use the local `wlan0` IP. On another machine do

```bash
ssh pi@${RPI_IP}
```

## Public SSH Access

Access the router portal. Grab the local IP address and
replace the last number with 1. Type this address into
a browser. From the router GUI assign a static IP to the
Raspberry Pi and forward a public port (2022) to port 22.

Enable DNS lookup by creating an account on `www.noip.com`
and creating a hostname. Follow the instructions at

```
https://www.noip.com/support/knowledgebase/install-ip-duc-onto-raspberry-pi/
```

Then check that the IP mapped by the hostname matches the
public IP `curl icanhazip.com` by entering the full URL at

```
https://mxtoolbox.com/DNSLookup.aspx
```

## Custom CAN-BUS Config

The Waterloop custom PCB has the pin layout, from left-to-right
when the headers are at the bottom-right of the PCB,

```
1. INT
2. SCK
3. SI
4. SO
5. CS
6. GND
7. 3.3V VCC
8. 5.0V VCC
```

At the same orientation, the CAN pins are, from top-to-bottom,

```
1. CANL
2. CANH
```
