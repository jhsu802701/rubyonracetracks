---
layout: page
title: Docker
sitemap:
    priority: 1.0
    changefreq: weekly
    lastmod: 2014-09-07T16:31:30+05:30
---
# Installing Ruby on Rails: Docker

## What's wrong with installing Ruby on Rails directly in the host OS?
* Even if you know exactly what you're doing and even if you encounter no setbacks, the process of installing Ruby on Rails manually is slow and takes many steps.
* Ruby on Rails can be finicky and is thus vulnerable to the infamous "but it works on my machine" problem, which I call a dependency mismanagement problem.  It's one thing to get your Rails app working in the original environment.  It's another to remember all of the necessary setup steps later when you deploy your app to the production environment or get it working on another machine.  (Using the "gem install" command or removing gems from the Gemfile are risk factors.)
* The process of creating Ruby gems is also vulnerable to the dependency management problems.  There have been times when I published a gem, only to find out that I was missing a critical detail when I tried to use it.
* Because the process of installing Ruby on Rails manually is painfully slow, the temptation to ignore possible dependency management problems is enormous.  This allows such problems to become even bigger, and this makes the troubleshooting process FAR more difficult.

## Why is the Docker software so great?
* Docker provides a virtual development environment that is independent of the host OS.
* Docker images with pre-installed Ruby on Rails can be created and used for working on Rails projects.  Because the software is pre-installed in Docker images, you can reset your Docker container to its original conditions in just a few SECONDS, not hours.  By using a custom Docker image in tandem with a 1-step build script in your app's source code, you can reset your development environment to its original conditions AND be back in business in just a few minutes, not hours.
* Because you have the ability to reset and rebuild everything in just a few minutes, it's easy to make sure that your 1-step build script works properly.  Because you can check your 1-step build process frequently, you can always be on top of ALL of your app's dependencies and avoid nasty dependency mismanagement nightmares.
* If you need to install your project manually in the production environment, the scripts used to create the Docker image combined with the 1-step build script in the source code double as a giant cheat sheet.

## Why are your Docker images based on Debian's stable branch?
* Debian is a very widely used Linux distro, and the Debian-based distros are what I'm used to using.  Because Debian is widely used, support is excellent, and help is easy to find.
* Debian Stable is lower in maintenance needs than Debian Testing.
* Debian is lighter, faster, and lower in maintenance needs than its Ubuntu derivative.

## Why aren't you using Docker in the same manner as everyone else?
Other people use multiple Docker containers per project.  They have a Ruby on Rails Docker container, a PostgreSQL Docker container, and other specialized Docker containers.  I find it confusing to keep track of all that AND to remember all of the different parameters in the startup commands.

## How do you use Docker?
* I use Docker as a replacement for the Vagrant virtual machines I previously used.  I use a Docker container for all aspects of each project.  This Docker container includes the project's current Ruby version, the Ruby version I expect to upgrade to, the project's current Rails version, the Rails version I expect to upgrade to, and selected other gems.  Setting up the project is MUCH faster when the proper versions of Ruby and Rails are pre-installed.  Installing a new version of Ruby or Rails involves a long wait.
* I use Bash scripts for starting a Docker container.  There's a script for downloading the latest Docker image available online, for resetting a Docker container to its original image setup, and for resuming a Docker container that I left (analogous to rebooting).
* Once I'm in the Docker container, I don't have to do anything in the host machine to directly work on my project.  However, I put my projects in the Docker container's shared directory, the directory that I have access to through either the host or virtual environment.  Thus, I can use the Geany editor (my preferred editor) in the host OS to edit my code.  I also have Docker set up to use port forwarding so that I can view the local server output, and the PostgreSQL database.

## Why don't you still use Vagrant?
Docker is faster, because it provides a virtual environment but not a virtual machine.  A virtual machine is a heavy user of memory and processing power and needs a few minutes to boot up.
