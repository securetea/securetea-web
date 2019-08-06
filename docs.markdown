---
layout: page
title : Documentation
category : docs
---

**The OWASP SecureTea Project** is an application designed to help Secure a person's laptop or computer / server with IoT (Internet Of Things) for notify users (via various communication mechanisms), whenever someone accesses their computer / server. This application uses the touchpad/mouse/wireless mouse to determine activity and is developed in Python and tested on various machines (Linux, Mac & Windows). 

The purpose of this application is to warn the user (via various communication mechanisms) whenever their computer / server accessed.
This small application was developed and tested in python in Linux machine, macOS & Windows.

<!-- ## Table Of Contents
*   [Target User](#target-user)
*   [Objective](#objective)
*   [Pre-requisites](#pre-requisites)
*   [Installation Procedure](#installation-procedure)
*   [Getting Twitter Tokens](#getting-twitter-tokens)
*   [Getting Twilio Tokens](#getting-twilio-tokens)
*   [Getting Slack Tokens](#getting-slack-tokens)
*   [Tested on](#tested-on)
*   [Suggestions and contribution](#suggestions-and-contributions)
*   [Code Of Conduct](https://github.com/OWASP/SecureTea-Project/blob/master/CODE_OF_CONDUCT.md)
*   [Chat Group](#chat-group)
*   [Roadmap](#roadmap)
*   [User guide](/doc/user_guide.md)
*   [Developer guide](/doc/dev_guide.md) -->

## Target User

It was written to be used by anyone who is interested in Security IoT (Internet of Things) and still needs further development.

## How it functions

*   Keep track of the movement of the mouse/touchpad
*   Detect who access the laptop with mouse/touchpad is installed
*   Send warning messages on Twitter/SMS/Slack/Telegram

## Objective

To alert the user via variuos communication mechanism, whenever his/her laptop had been accessed by someone.
And also it can be used to monitor your system.

## Pre-requisites

### Hardware

*   Linux OS / Raspberry Pi - have `sudo` access on the terminal/console
*   Mouse / Wireless Mouse / Touchpad congenital laptop
*   The Twitter application is already installed on the mobile phone  (Optional)

### Software 

*   Python - https://www.python.org/ (`sudo apt-get install python`)
*   Angular - https://angular.io/ 
*   A Twitter account - https://twitter.com
*   A Twilio account(optional, if SMS service not required)
*   Mobile phone, a previously-installed Twitter application (Optional)

### Procedure for installing
You can install OWASP SecureTea Tool using the following methods:
-  [PyPi](#PyPi)
-  [GitHub](#github)
-  [Zip](#zip)

#### Setting up a virtual environment
1.  Install virtualenv<br>
`pip install virtualenv`<br>
2.  Create a virtual environment named `venv1`<br>
`virtualenv venv1`<br>
3.  Activate virtual environment `venv1`<br>
`source venv1/bin/activate`<br>

#### PyPi

You can install SecureTea from PyPi package manager

`pip install securetea`

Please make sure all dependencies are installed if this fails.

#### GitHub
Installing from GitHub involves the following steps:

1.  Clone the repository<br>
`git clone https://github.com/OWASP/SecureTea-Project.git`<br>
2.  Navigate into the project directory<br>
`cd SecureTea-Project`<br>
3.  Install SecureTea package<br>
`sudo python setup.py install`<br>
4.  Install python dependencies<br>
`pip install -r requirements.txt`<br>

If done, proceed to [After installation](#after-installation)

#### Zip
Installing from Zip involves the following steps:

1.  Download the [zip](https://github.com/OWASP/SecureTea-Project/archive/master.zip).
2.  Unzip using: `unzip master.zip`
3.  Navigate into the project directory<br>
`cd SecureTea-Project`<br>
4.  Install SecureTea package<br>
`sudo python setup.py install`<br>
5.  Install python dependencies<br>
`pip install -r requirements.txt`<br>
or 
`pip3 install -r requirements.txt`<br>
tip: Incase of any error during installation, try using `apt-get install build-essential python-dev libnetfilter-queue-dev` to resolve the error.
<br>
<hr>
#### Configuring SecureTea

##### Editing the configurations using a text-editor

Default configuration:

```json
{
	"twitter": {
		"api_key": "XXXX",
		"api_secret_key": "XXXX",
		"access_token": "XXXX",
		"access_token_secret": "XXXX"
	},
	"telegram": {
		"token": "XXXX",
		"user_id": "XXXX"
	},
	"twilio": {
		"twilio_sid": "XXXX",
		"twilio_token": "XXXX",
		"twilio_from": "XXXX",
		"twilio_to": "XXXX"
	},
	"slack": {
		"token": "XXXX",
		"user_id": "XXXX"
	},
	"aws_ses": {
		"aws_email": "XXXX",
		"aws_access_key": "XXXX",
		"aws_secret_key": "XXXX"
	},
	"gmail": {
		"sender_email": "XXXX",
		"to_email": "XXXX",
		"password": "XXXX"
	},
	"firewall": {
		"interface": "",
		"inbound_IPRule": {
			"action": "0",
			"ip_inbound": ""
		},
		"outbound_IPRule": {
			"action": "0",
			"ip_outbound": ""
		},
		"protocolRule": {
			"action": "0",
			"protocols": "ICMP"
		},
		"scanLoad": {
			"action": "0",
			"extensions": ".exe"
		},
		"source_portRule": {
			"action": "0",
			"sports": ""
		},
		"dest_portRule": {
			"action": "0",
			"dports": ""
		},
		"HTTPRequest": {
			"action": "0"
		},
		"HTTPResponse": {
			"action": "0"
		},
		"DNSRule": {
			"action": "0",
			"dns": ""
		},
		"time": {
			"time_lb": "00:00",
			"time_ub": "23:59"
		}
	},
	"insecure_headers": {
			"url": ""
	},
	"ids": {
		"threshold": 10,
		"interface": "XXXX"
	},
	"server_log": {
		"log_type": "",
		"log_file": "",
		"window": "30",
		"ip_list": "",
		"status_code": ""
	},
	"debug": false
}
```

###### Using gedit<br>
`gedit securetea.conf`

###### Using vim<br>
`vi securetea.conf`

##### Configuring using interactive setup mode

##### Setup all the features
1.  Start SecureTea without any parameters:<br>
`sudo SecureTea.py`<br>
This will start an interactive setup mode, to skip a particular setup, enter s or S.<br><br>
![](https://raw.githubusercontent.com/OWASP/SecureTea-Project/master/img/setup_all.gif)<br>

##### Setup a particular feature
Arguments list

```argument
--telegram     Start Telegram interactive setup
--twitter      Start Twitter interactive setup
--twilio_sms   Start Twilio SMS interactive setup
--firewall     Start Firewall interactive setup
--aws_ses      Start Amazon Web Services(AWS-Simple Email Services) interactive setup
--gmail        Start G-Mail interactive setup
```

Examples:<br>
-  Starting SecureTea-Firewall interactive setup: `sudo SecureTea.py --firewall`<br><br>
![Firewall](https://raw.githubusercontent.com/OWASP/SecureTea-Project/master/img/setup_firewall.gif)<br>

-  Starting Telegram & Twitter interactive setup: `sudo SecureTea.py --telegram --twitter`<br><br>
![TelegramTwitter](https://raw.githubusercontent.com/OWASP/SecureTea-Project/master/img/tele_twi.gif)<br>

<!-- ### Getting Twitter Tokens

*   Visit https://apps.twitter.com and "Create new app" to obtain authentication and token codes.

### Getting Twilio Tokens

*   Visit https://www.twilio.com and click on "Get a free API key".

###  Getting Slack Tokens

*   Visit https://api.slack.com/apps/new and create a new bot app.
*   In the bot app settings, setup event subscriptions by Enabling Events.
*   Install the bot app in the workspace required.
*   Get the "Bot User OAuth Access Token", it starts with `xoxb-`
*   Get your user id for the particular workspace.

## Tested on

*   [TealinuxOS](http://tealinuxos.org/) - Worked
*   [Deepin](https://www.deepin.org/en/) - Worked
*   [Raspbian](https://www.raspbian.org/) - Worked
*   [macOS](https://www.apple.com/in/macos/high-sierra/) - Worked
*   [Ubuntu](https://www.ubuntu.com/) - Worked -->

<!-- ## Suggestions and Contributions 

[Contribution Guide](https://github.com/OWASP/SecureTea-Project/blob/master/CONTRIBUTING.md)

*   [Ade Yoseman](https://www.owasp.org/index.php/Ade_Yoseman_Putra)
*   [Bambang Kurniawan](https://www.owasp.org/index.php/User:Idbmb)
*   [Felex kemboi](https://github.com/felexkemboi/)
*   [Lojislav Bezimenov](https://github.com/lojikil/)
*   [Rejah Rehim](https://rejahrehim.com)
*   [Ananthu S](https://github.com/sananthu)
*   [Abhishek Sharma](https://github.com/abhisharma404)
*   [Mishal Shah](https://github.com/mishal23) -->

<!-- ## Chat Group

[![Telegram](https://github.com/OWASP/SecureTea-Project/blob/master/img/telegram.png "Telegram")](https://t.me/joinchat/Az5yZxQg7Djs-UZWKKCRVQ)] -->



<!-- <img src="https://betanews.com/wp-content/uploads/2016/03/vertical-GSoC-logo.jpg" width="200"></img> -->
#### Starting Firewall
Usage:<br>
```argument
sudo SecureTea.py --interface <data> --inbound_IP_action <data> --inbound_IP_list <data> --outbound_IP_action <data> --outbound_IP_list <data> --protocol_action <data> --protocol_list <data> --scan_action <data> --scan_list <data> --dest_port_action <data> --dest_port_list <data> --source_port_action <data> --source_port_list <data> --HTTP_request_action <data> --HTTP_response_action <data> --dns_action <data> --dns_list <data> --time_lb <data> --time_ub <data> 
```

#### Starting AWS-SES
Usage:<br>
```argument
sudo SecureTea.py --aws_ses <data> --aws_email <data> --aws_access_key <data> --aws_secret_key <data>
```

## Firewall
SecureTea Firewall currently uses the following rules to filter the incoming traffic:
<br><br>
**Process 1 (Firewall Engine):**
- Filter packets based on:
    - Inbound IP rules
    - Outbound IP rules
    - Source port rules
    - Destination port rules
    - Protocols
    - Scan for downloads in HTTP websites
    - DNS filter rules
    - Filter HTTP request & response
    - IP packet first fragment
    - IP packet fragment boundary
    - IP packet fragment small offset
    - Unknown IP version
    - Invalid IP source
    - Invalid IP header length
    - Network congestion detection
    - Ending FIN-ACK handshakes
    - TCP Packet with None flag
    - SYN fragmentation
    - ICMP fragmentation attack
    - Large ICMP packets
    
 Apart from that, the background process deals with the following functions:
 <br><br>
**Process 2 (Firewall Monitor):**
- Monitor open ports
- Monitor active services
- Monitor network usage
- Monitor active CPU process

## Intrusion Detection System
SecureTea Intrusion Detection System (IDS) deals with the following attack vectors and logs any abnormalities:

**Detect probe (reconnaissance) attacks (performed for information gathering)**

- General scans: TCP ACK & TCP Window, UDP, ICMP scans
- Stealth scans: FIN, XMAS, NULL scans
- OS fingerprinting scans

**Detect Denial of Service (DoS) & Remote to Local (R2L) attacks**
- DoS attacks
- CAM Table Exhaustion
- DHCP Exhaustion
- Man in The Middle (MiTM) / ARP cache poisoning
- SYN flood attack
- Ping of death
- Land attack
- Wireless
     - Deauthentication attack
    - Hidden node attack
    - SSID spoofing
    - Fake access point
    
## Insecure Headers
Check/monitor the website for the followings:
  - X-XSS-Protection
  - X-Content-Type
  - Strict Transport Security
  - Content Security Policy
  - X-Frame
  - HTTP methods
       - Test all methods - 'GET', 'POST', 'PUT', 'DELETE', 'OPTIONS', 'TRACE', 'TEST'
       - Cross Site Tracing vulnerability
- Check for cookie details

## System Log Monitor
System log aggregator to disparate log files, organize the useful data and apply intelligence to detect intrusion activities.

**a. Log file :** `/etc/passwd` & `/etc/shadow`
  - Detect backdoors
  - Detect user existing without a password that may lead to privilege escalation
  - Check integrity of system's password storing
  - Detect non-standard hashing algorithm used in passwords to guess system manipulation

**b. Log file**: `/var/log/auth.log` & `/var/log/faillog`
  - Detect system login attempts
  - Detect password brute-force
  - Detect harmful commands executed as root
  - Detect port scans
  - Detect SSH login attempts & brute-force

**c. Log file:** `/var/log/syslog`
  - Detect malicious sniffer by extracting PROMISC mode

## Server Log Monitor
System log aggregator to disparate server log files, organize the useful data and apply intelligence to detect intrusion activities.

Currently, the server log monitor supports the following log file types:
1. Apache
2. Nginx

The following suspicious activities/attacks can be detected:
- Attacks
   - Denial of Service (DoS) attacks
   - Cross site scripting (XSS) injection
   - SQL injection (SQLi)
   - Local file inclusion (LFI)
   - Web shell injection
   
 - Reconnaissance attacks
   - Web crawlers / spiders / bots
   - URL Fuzzing
   - Port scans
   - Bad user agents

- Log bad/suspicious IP (later on picked up by Firewall to block incoming request from that IP)

- User defined rules:
   - Filter based on selected IPs
   - Filter based on response code
