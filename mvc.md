---
layout: page
title: MVC
sitemap:
    priority: 1.0
    changefreq: weekly
    lastmod: 2014-09-07T16:31:30+05:30
---
# Outlining MVC

The Model-View-Controller architecture is the basis for the Ruby on Rails web framework. I found understanding MVC to be the most difficult part of understanding Ruby on Rails, but it is of critical importance. You don't need a good understanding of MVC to get through Rails Tutorial, but you cannot be productive at working on Rails projects without it. Be prepared to obsess over MVC, but you should obsess over it efficiently. I rely on automated outlining and diagramming tools to take care of the mindless grunt work for me on demand.

## What's wrong with the traditional methods?
Other people can go through the files and directories of a Rails project manually, immediately understand all of the details of what's going on, and remember it all without writing it down. While that works for Michael Hartl (Rails Tutorial author), doing that makes my head spin. To add insult to injury, the details are likely to change, and that means having to do it all over again. This is why I rely on automated shortcuts that get the computer to do all this work for me.

## annotate
The annotate gem is used to add comments to model, fixture, testing, routing, and other files that summarize the current schema in the project. You won't have to run the "rake routes" command as often, because the result is stored in the config/routes.rb file. You don't have to manually go through the db/schema.rb file and db/migration files to get a list of the parameters for a model, because these parameters are listed in the associated model and unit test files.

## rails-erd
The rails-erd gem is used to automatically create a block diagram of the models in use. The diagram lists model parameters and illustrates the relationships among the models.

## railroady
The railroady gem is used to automatically create a block diagram of the controllers in use. The diagram lists the controller methods and illustrates the relationships among the controllers.

## Gem Dependency Diagram
The "bundle viz" command is used to automatically create a block diagram of the required gems and illustrate the relationships among them.
