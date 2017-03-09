---
layout: page
title: Getting Started In Docker
sitemap:
    priority: 1.0
    changefreq: weekly
    lastmod: 2014-09-07T16:31:30+05:30
---
# Getting Started in Docker

### Prerequisites
* You should have MX Linux (or a similar Debian-based Linux distro) installed.  The instructions provided here and in the associated GitHub repositories are based on the assumption that you are using MX Linux.
* If you are a [Mac](mac.html) or [Windows](windows.html) user, please install MX Linux (or a similar Linux distro) on a virtual machine with VirtualBox.

### Step 1: Install Git and LXTerminal, and remove Xfce Terminal.
* Open an Xfce terminal, and enter the following commands:
```
sudo apt-get update; sudo apt-get install -y git lxterminal;\
sudo apt-get purge -y xfce4-terminal
```
* Git is the version control system used by most Ruby on Rails developers.
* Copying and pasting commands into the terminal is easier with LXTerminal than it is with Xfce terminal.

### Step 2: Install Docker and other software.
* Open an LXTerminal window, and enter the following commands:
```
mkdir jhsu802701
cd jhsu802701
```
* If you are using 32-bit MX Linux, enter the following commands:
```
git clone https://github.com/jhsu802701/docker-32bit-debian-jessie-install
cd docker-32bit-debian-jessie-install
sh main.sh
```
* If you are using 64-bit MX Linux, enter the following commands:
```
git clone https://github.com/jhsu802701/docker-64bit-debian-jessie-install
cd docker-64bit-debian-jessie-install
sh main.sh
```
* The Docker installation script that you run installs not only Docker but other software that you'll need as well.  (Feel free to use a different password manager and/or different code editor instead.)

### Step 3: Download the Docker repository.
* If you have not already done so, open a command line shell window.
* Enter the following commands:
```
git clone https://github.com/jhsu802701/docker-debian-jessie.git
cd docker-debian-jessie
```

### Step 4: Run the appropriate script for using the general purpose Docker image for Ruby on Rails.
* If you are in 32-bit MX Linux, enter the command "sh 32rbenv-general.sh".
* If you are in 64-bit MX Linux, enter the command "sh rbenv-general.sh".

### Step 5: Enter the directory created for the above Docker image, and execute the download_new_image.sh script.
* Enter the following commands:
```
cd rbenv-general
sh download_new_image.sh
```
* The Docker image will be downloaded, and a corresponding Docker container will be created.  When the new Docker container is ready, you will be automatically logged in.
