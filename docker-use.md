---
layout: page
title: Way of Using Docker
sitemap:
    priority: 1.0
    changefreq: weekly
    lastmod: 2014-09-07T16:31:30+05:30
---
# How do you use Docker?

* I use Docker as a replacement for the Vagrant virtual machines I previously used.  I use a Docker image to include all major dependencies of each project.  This Docker image includes the project's current Ruby version, the Ruby version I expect to upgrade to, the project's current Rails version, the Rails version I expect to upgrade to, and selected other gems.  Setting up the project is MUCH faster when the proper versions of Ruby and Rails are pre-installed.  Installing a new version of Ruby or Rails involves a long wait.
* I use Bash scripts for starting a Docker container from a Docker image.  There's a script for downloading the latest Docker image available online, for resetting a Docker container to its original image setup, and for resuming a Docker container that I previously exited (analogous to rebooting).
* Once I'm in the Docker container, I don't have to do anything in the host machine to directly work on my project.  However, I put my projects in the Docker container's shared directory, the directory that I have access to through either the host or virtual environment.  Thus, I can use the Geany editor (my preferred editor) in the host OS to edit my code.  I also have Docker set up to use port forwarding so that I can view the local server output and the PostgreSQL database.
