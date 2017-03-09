---
layout: page
title: Support for 64-Bit and 32-Bit Docker
sitemap:
    priority: 1.0
    changefreq: weekly
    lastmod: 2014-09-07T16:31:30+05:30
---
# Support for 64-Bit and 32-Bit Docker

## Why do you support 32-bit Docker when everyone else uses 64-bit Docker?
* Many computers still have under 4 GB of memory installed.  If you're using such a computer, you're advised to use a 32-bit OS on it, because it will require less memory than the 64-bit version of the same OS.
* I rely heavily on tmux in Docker so that I can execute two or more different actions in the same Docker container simultaneously.  Using tmux in 64-bit Docker requires a computer that uses a processor that offers VT-d (Intel Virtualization Technology for Directed I/O).  Only Mac computers and top-of-the-line PCs offer VT-d.  Thus, using tmux on a cheaper computer requires the use of a 32-bit OS and 32-bit Docker.

## Why do you support 64-bit Docker?
The automated build feature in [Docker Hub](https://hub.docker.com/) is well-supported for 64-bit Docker.  I tried to create 32-bit Docker images with the automated build feature and encountered snags, because the system is not set up to work with 32-bit software.
