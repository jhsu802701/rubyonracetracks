---
layout: page
title: Everyone Else's Way of Using Docker
sitemap:
    priority: 1.0
    changefreq: weekly
    lastmod: 2014-09-07T16:31:30+05:30
---
# Why aren't you using Docker in the same manner as everyone else?

Other people use multiple Docker containers per project.  They have a Ruby on Rails Docker container, a PostgreSQL Docker container, and other specialized Docker containers.  I find it confusing to keep track of all that.  Therefore, I rely on a custom Docker image for each project and include all major dependencies so that I can get started quickly.  In other words, I use Docker as a replacement for Vagrant.
