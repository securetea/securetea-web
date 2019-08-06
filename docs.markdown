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

### I. Hardware

*   Linux OS / Raspberry Pi - have `sudo` access on the terminal/console
*   Mouse / Wireless Mouse / Touchpad congenital laptop
*   The Twitter application is already installed on the mobile phone  (Optional)

### II. Software 

*   Python - https://www.python.org/ (`sudo apt-get install python`)
*   Angular - https://angular.io/ 
*   A Twitter account - https://twitter.com
*   A Twilio account(optional, if SMS service not required)
*   Mobile phone, a previously-installed Twitter application (Optional)

## Installation Procedure

1. Python and python-setuptools must be installed. (If not already installed: `sudo apt-get install python python-setuptools`)

2. Download/Clone repository from: https://github.com/OWASP/SecureTea-Project.git

```
git clone https://github.com/OWASP/SecureTea-Project.git
```

3. Install SecureTea package:

```
cd SecureTea-Project
```

```
python setup.py install
```

4. Install python dependencies/ requirements:

```python
$ pip install -r requirements.txt
```

5. Open the "securetea.conf" in your home directory (~/.securetea/securetea.conf) with a text editor and edit the following variables :

 Copy/Paste API KEY and TOKEN from Twitter apps
 
 ```
"api_key": "XXXX",
"api_secret_key": "XXXX",
"access_token": "XXXX",
"access_token_secret": "XXXX",
"username": "XXXX"
```

6. Optionally in "securetea.conf" You can set `"debug" : true` to enable the console log (default: enabled), or set `"debug" : false` to disable logging to console.

7. Install Mouse / Wireless Mouse Touchpad if not functioning properly (Linux / macOS / Raspberry Pi machine).

8. Okay, Run program

```
sudo SecureTea.py
``` 

or more:

```
SecureTea.py -h
```

9. Notice a `WELCOME_MSG` Like this:
`[Core]  [ 2018-08-30 16:50 ]  Info : Welcome to SecureTea..!! Initializing System`

10. Laptop access by moving the mouse/touchpad to see the cumulative X and Y coordinates on the console. If you have a twitter app installed on your phone, you can get updates on the "message" from your twitter account.

11. Checks Alert message on the console and on twitter your inbox.
`[Core]  [ 2018-08-30 16:50 ]  Warn : (3) : Someone has access your laptop when`

12. If you want to monitor your system from a webapp

```
cd gui
```

```
npm install
```

```
ng serve
```

13. Click new tab terminal and type 

```
sudo python monitor.py
```

14. Go to 

```
http://localhost:4200
```

to view your project.
END-POINT type

```
http://localhost:5000
```

and click SIGN IN.

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
