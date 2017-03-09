---
layout: page
title: Reinstallation
sitemap:
    priority: 1.0
    changefreq: weekly
    lastmod: 2014-09-07T16:31:30+05:30
---

# Why is it important to be able to reinstall Ruby on Rails?

* Ruby on Rails can be finicky and is thus vulnerable to the infamous "but it works on my machine" problem, which I call a dependency mismanagement problem.  It's one thing to get your Rails app working in the original environment.  It's another to remember all of the necessary setup steps later when you need to deploy your app to the production environment or need to get it working on another machine.  (Risk factors include use of the "gem install" command and the removal of gems from the Gemfile.)
* The process of creating Ruby gems is also vulnerable to the dependency mismanagement problems.  There have been times when I published a gem, only to find out that I was missing a critical detail when I tried to use it.
* Because the process of installing Ruby on Rails manually is painfully slow, the temptation to ignore possible dependency mismanagement problems is enormous.  This allows such problems to become even bigger, and this makes the troubleshooting process FAR more difficult.
* Dependency mismanagement problems make it difficult for new members of your team to get started.
