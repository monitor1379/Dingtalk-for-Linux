# Dingtalk for Linux

Dingtalk for Linux-x64.

![http://github.com/monitor1379/Dingtalk-for-Linux](https://img.shields.io/badge/build-passing-drakgreen.svg?longCache=true&style=flat)


# Introduction

## QRCode lgin

![QRCode](images/QRCode.png)

## Chat session

![ChatSession](images/start.jpg)




## Installation

Enter 'Enter' to use default installation position

```
# Step 1.
$git clone git@github.com:monitor1379/Dingtalk-for-Linux.git

# Step 2.
$cd Dingtalk-for-Linux

# Step 3.
$sudo ./install.sh
```

```
============================================
Welcome to install Dingtalk for Linux

Install to (/home/monitor1379/dingtalk): /home/monitor1379/Softwares/dingtalk

Install position: /home/monitor1379/Softwares/dingtalk

Installing...
Create: /home/monitor1379/Softwares/dingtalk
Download: nodejs-webkit
Untar: nodejs-webkit
Copy: src/ to /home/monitor1379/Softwares/dingtalk/src
Copy: lib/ to /home/monitor1379/Softwares/dingtalk/lib
Copy: dingtalk.sh to /home/monitor1379/Softwares/dingtalk
Create: /usr/share/applications/dingtalk.desktop

Done
============================================

```

## Usage

```
$cd path/to/dingtalk
$./dingtalk.sh
```

after opening dingtalk you can dock shortcut to docker


# Uninstallation

```
cd path/to/dingtalk
sudo ./uninstall.sh
```
