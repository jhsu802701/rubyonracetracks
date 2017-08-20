---
layout: page
title: FAQ (Docker)
sitemap:
    priority: 1.0
    changefreq: weekly
    lastmod: 2014-09-07T16:31:30+05:30
---

# FAQ (Docker)

## What's wrong with installing Ruby on Rails in MacOS?
* Even if you know exactly what you’re doing, and even if you encounter no setbacks, the process of installing Ruby on Rails manually is painfully slow and takes many steps.
* The task of reinstalling Ruby on Rails manually is also a slow and bureaucratic one.  Not being free to destroy and rebuild my development environment is a deal-breaker for me.

## What's wrong with installing Ruby on Rails in Windows?
*Very few people know how to install Ruby on Rails in Windows, which means that the support available is extremely limited. Given that the well-established procedures for manually installing Ruby on Rails in OS X or Linux are painfully slow and require babysitting processes, installing Ruby on Rails in Windows is a task for Chuck Norris.
* I rely on Bash scripts for many routine tasks in Ruby on Rails, but I was unable to get Bash commands to work in Windows.

## Why is it important to be able to reinstall Ruby on Rails?
* Ruby on Rails can be finicky and is thus vulnerable to the infamous “but it works on my machine” problem, which I call a dependency mismanagement problem. It’s one thing to get your Rails app working in the original environment. It’s another to remember all of the necessary setup steps later when you need to deploy your app to the production environment or need to get it working on another machine. (Risk factors include use of the “gem install” command and the removal of gems from the Gemfile.)
* The process of creating Ruby gems is also vulnerable to the dependency mismanagement problems. There have been times when I published a gem, only to find out that I was missing a critical detail when I tried to use it.
* Because the process of installing Ruby on Rails manually is painfully slow, the temptation to ignore possible dependency mismanagement problems is enormous. This allows such problems to become even bigger, and this makes the troubleshooting process FAR more difficult.
Dependency mismanagement problems make it difficult for new members of your team to get started.

## Why is Docker so great?
* Docker provides a virtual development environment that is independent of the host OS.
Docker images with pre-installed Ruby on Rails can be created and used for working on Ruby gems and Rails projects. Because the software is pre-installed in Docker images, you can reset your Docker container to its original conditions in just a few SECONDS, not hours. By using a custom Docker image in tandem with a 1-step build script in your app’s source code, you can reset your development environment to its original conditions AND be back in business in just a few minutes, not hours.
* Because you have the ability to reset and rebuild everything in just a few minutes, it’s easy to make sure that your 1-step build script works properly. Because you can check your 1-step build process frequently, you can always be on top of ALL of your app’s dependencies and avoid nasty dependency mismanagement nightmares.
* If you need to install your project manually in the production environment, the scripts used to create the Docker image combined with the 1-step build script in the source code double as a giant cheat sheet.
* Anyone who joins your project can be ready to roll in minutes, not hours or days.

## Why are your Docker images based on Debian’s stable branch?
Debian is a very widely used Linux distro, and the Debian-based distros are what I’m used to using. Because Debian is widely used, support is excellent, and help is easy to find.
Debian Stable is lower in maintenance needs than Debian Testing.
Debian is lighter, faster, and lower in maintenance needs than its Ubuntu derivative.

## How do you use Docker?
* I use Docker as a replacement for the Vagrant virtual machines I previously used. I use a Docker image to include all major dependencies of each project. This Docker image includes the project’s current Ruby version, the Ruby version I expect to upgrade to, the project’s current Rails version, the Rails version I expect to upgrade to, and selected other gems. Setting up the project is MUCH faster when the proper versions of Ruby and Rails are pre-installed. Installing a new version of Ruby or Rails involves a long wait.
* I use Bash scripts for starting a Docker container from a Docker image. There’s a script for downloading the latest Docker image available online, for resetting a Docker container to its original image setup, and for resuming a Docker container that I previously exited (analogous to rebooting).
* Once I’m in the Docker container, I don’t have to do anything in the host machine to directly work on my project. However, I put my projects in the Docker container’s shared directory, the directory that I have access to through either the host or virtual environment. Thus, I can use the Geany editor (my preferred editor) in the host OS to edit my code. I also have Docker set up to use port forwarding so that I can view the local server output and the PostgreSQL database.

## Why don’t you still use Vagrant?
Docker is faster, because it provides a virtual environment but not a virtual machine. A virtual machine is a heavy user of memory and processing power and needs a few minutes to boot up. Docker bypasses that overhead, and this allows you to enter your Ruby on Rails development environment in no more than a few seconds.

## Why aren’t you using Docker in the same manner as everyone else?
Other people use multiple Docker containers per project. They have a Ruby on Rails Docker container, a PostgreSQL Docker container, and other specialized Docker containers. I find it confusing to keep track of all that. Therefore, I rely on a custom Docker image for each project and include all major dependencies so that I can get started quickly. In other words, I use Docker as a replacement for Vagrant.

## Why do you prefer SparkyLinux as the host system containing Docker?
* SparkyLinux is fast, lightweight, well-polished, well-supported, and user-friendly.  It's so fast and lightweight that it even runs quite well on 10-year-old PCs.
* I use a stable edition of SparkyLinux for maximum stability and minimum maintenance.
* When Debian first released Debian Stretch as the new Debian Stable, SparkyLinux was the first to provide a new release based on it.

## Why don’t you use Ubuntu?
* I tried the Unity interface, and it was unintuitive to me.
* The Ubuntu base has a high overhead, which means that it requires far more memory, processor speed, and other resources than SparkyLinux Linux and other Debian-based distros that bypass the Ubuntu base. This high overhead is especially significant if your computer is more than a few years old, or if you’re relying on a Linux virtual machine on your Mac or Windows computer.
* That said, if you like Ubuntu, and your computer is new enough and fast enough to handle it, you are free to use it.

## Why do you support 32-bit Docker when everyone else uses 64-bit Docker?
* Many computers still have under 4 GB of memory installed. If you’re using such a computer, you’re advised to use a 32-bit OS on it, because it will require less memory than the 64-bit version of the same OS.
* I rely heavily on tmux in Docker so that I can execute two or more different actions in the same Docker container simultaneously. Using tmux in 64-bit Docker requires a computer that uses a processor that offers VT-d (Intel Virtualization Technology for Directed I/O). Only Mac computers and top-of-the-line PCs offer VT-d. Thus, using tmux on a cheaper computer requires the use of a 32-bit OS and 32-bit Docker.
