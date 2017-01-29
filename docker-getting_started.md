---
layout: page
title: Getting Started In Docker
sitemap:
    priority: 1.0
    changefreq: weekly
    lastmod: 2014-09-07T16:31:30+05:30
---
# Getting Started in Docker

## Prerequisites
* You should be a Linux or Mac user.
* If getting rid of Windows is not an option, please install a [Linux virtual machine](windows.html).

## Step 1: Install KeePassX, Geany, Git, SQLiteBrowser, and pgAdmin.
* Debian Linux users: Open a command line shell window and enter the following command:
```
sudo apt-get update; sudo apt-get install -y keepassx geany git sqlitebrowser pgadmin3
```
* Users of non-Debian based Linux: Install KeePassX, Geany, Git, SQLiteBrowser, and pgAdmin using your distro's package manager.
* Mac users: Download these programs from their web sites and follow the instructions provided.
  * KeePassX: [https://www.keepassx.org/](https://www.keepassx.org/)
  * Geany: [https://www.geany.org/](https://www.geany.org/)
  * Git: [https://git-scm.com/](https://git-scm.com/)
  * SQLiteBrowser: [http://sqlitebrowser.org/](http://sqlitebrowser.org/)
  * pgAdmin: [https://www.pgadmin.org/](https://www.pgadmin.org/)
* What are these programs for?
  * KeePassX: This is a password management program that allows you to generate, encrypt, and save secure passwords.  Limiting yourself to passwords that you can remember is a security no-no, and so is using the same password everywhere.  KeePassX is free and open source, and it's available for Linux, Mac, and Windows users.
  * Geany: This is a free and open source code editor that is available for Linux, Mac, and Windows users.
  * Git: This is the leading version control program.
  * SQLiteBrowser: This GUI program will allow you to view the SQLite databases used by Rails apps.
  * pgAdmin: This GUI program will allow you to view PostgreSQL databases used by Rails apps.

## Step 2: Install Docker.
* 32-bit Debian Linux users
  * Go to [https://github.com/jhsu802701/docker-32bit-debian-jessie-install](https://github.com/jhsu802701/docker-32bit-debian-jessie-install), download the repository, and run the main.sh script.
  * Here are the commands:
  ```
  git clone https://github.com/jhsu802701/docker-32bit-debian-jessie-install.git
  cd docker-32bit-debian-jessie-install
  sh main.sh
  ```
* Mac users and 64-bit Linux users: Go to the [Docker web site](https://www.docker.com/) and follow the instructions for installing Docker.

## Step 3: Install the Docker Repository
* If you have not already done so, open a command line shell window.
* Go to [https://github.com/jhsu802701/docker-debian-jessie](https://github.com/jhsu802701/docker-debian-jessie).
* Download the repository.
* Run the appropriate script for using your desired Docker image.  
  * For the 32-bit rbenv-general image: Enter the command "sh 32rbenv-general.sh".
  * For the 64-bit rbenv-general image: Enter the command "sh rbenv-general.sh".
  * NOTE: /bin/sh should point to Bash instead of Dash.  If you get an error message, it's because you're using Dash instead of Bash.  The screen output will include instructions on how to correct this.  If necessary, follow these instructions and run the appropriate script again.

## Step 4: Enter the directory created for the above Docker image and enter the download_new_image.sh script.
* The commands are:
```
cd rbenv-general
sh download_new_image.sh
```
* The Docker image will be downloaded, and a corresponding Docker container will be created.  When the new Docker container is ready, you will be automatically logged in.
