---
layout: page
title: Building Docker Images
sitemap:
    priority: 1.0
    changefreq: weekly
    lastmod: 2014-09-07T16:31:30+05:30
---
# Getting Started in Docker

### Prerequisites
* You should have MX Linux (or a similar Debian-based Linux distro) installed as the host OS or as a guest OS.  The instructions provided here and in the associated GitHub repositories are based on the assumption that you are using a Debian-based distro.
* You should have Docker already [installed](docker-getting_started.html).
* You should know how to run the test scripts that are automatically provided in the shared directory for using a given Docker image.

### 32-Bit Builds
The 32-bit builds are executed on your local machine.  After your new Docker image has been built, you will see instructions on how to test your Docker image and be prompted for a decision on whether or not you wish to push the new Docker image to Docker Hub.

### 64-Bit Builds
The build process is handled through Docker Hub's automated build system.  There is no need to run the build process locally in order to create new Docker images.  However, build scripts are available to illustrate how the process works locally or to verify the viability of changes in the build scripts.

### Step 1: Download the appropriate repository for building the Docker images.
* If you are in 32-bit Debian Linux, enter the following commands:
```
git clone https://github.com/jhsu802701/docker-32bit-debian-jessie-build.git
cd docker-32bit-debian-jessie-build
ls
```
* If you are in 64-bit Debian Linux, enter the following commands:
```
git clone https://github.com/jhsu802701/docker-64bit-debian-jessie-build.git
cd docker-64bit-debian-jessie-build
ls
```

### Step 2: Execute the script for building the desired Docker image.
* If you are in 32-bit Debian Linux, just enter the command "sh (script name).sh" to proceed.  The min.sh script creates the Minimal Docker image.  The rbenv-general.sh script creates the general purpose rbenv Docker image.
* If you are in 64-bit Debian Linux, just use the cd command to enter the appropriate directory, and then enter the command "sh build.sh".  To build the Minimal Docker image, enter the "min" directory.  To build the general purpose rbenv Docker image, enter the "rbenv-general" directory.

### Step 3: Test and push the new Docker image.
* 32-bit build: After the build process is completed, you will be given instructions on how to test the new Docker image and the choice of whether or not you wish to push the image.
* 64-bit build: The new Docker image is now available for use locally.  There is no need to push this Docker image, because Docker Hub's automated build process is used to handle everything remotely.
