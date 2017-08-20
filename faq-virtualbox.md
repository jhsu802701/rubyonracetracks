---
layout: page
title: FAQ (VirtualBox)
sitemap:
    priority: 1.0
    changefreq: weekly
    lastmod: 2014-09-07T16:31:30+05:30
---
# FAQ (VirtualBox)

## What is a virtual machine?
A virtual machine is a simulated second computer within your physical computer.  Like a physical machine, a virtual machine can be booted up and have an OS installed to it.

## Why use VirtualBox?
VirtualBox is free and open source.  It's available for Linux, Mac, and Windows host machines.

## What's the point?
* If you are a Windows or Mac user, VirtualBox allows you to try out Linux or other operating systems WITHOUT disrupting your existing setup.
* If you are a Linux user, VirtualBox allows you to try out other Linux distros WITHOUT disrupting your existing setup.
* If you are a Linux or Mac user, you can install Windows in VirtualBox and free yourself from the hassles of Windows crashes and other problems.  You can save snapshots of your Windows installation at key points and restore these snapshots when you have problems.
* If you know the Linux way but not the Mac way or Windows way of doing something, having a Linux virtual machine bails you out of the responsibility of having to do this.  A Linux virtual machine is handy for installing Ruby on Rails on a Windows machine, getting Bash scripts to work on a Windows machine, or reinstalling Ruby on Rails on a Mac.
* VirtualBox gives all members of a team the opportunity to use a common development environment, regardless of whether they are using Linux, MacOS, or Windows as their host systems.  Linux is free and open source and thus available to everyone.  On the other hand, a Windows license is needed for a permanent Windows installation, and MacOS is not available for PCs.

## What's wrong with using Docker for Mac?
While Docker for Mac and Docker Toolbox are available for Mac users, you’ll find that processes running under these Docker solutions are much slower than processes running under my Docker solution. Like my solution, Docker for Mac and Docker Toolbox rely on a virtual machine as an intermediary between Mac and Docker. The use of a virtual machine is simply much more obvious under my solution.

## What's wrong with using Docker for Windows?
I rely on Bash scripts for starting and entering Docker containers.  I was unable to figure out how to get Bash scripts to work in Windows.
