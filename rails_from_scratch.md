---
layout: page
title: Rails From Scratch
sitemap:
    priority: 1.0
    changefreq: weekly
    lastmod: 2014-09-07T16:31:30+05:30
---
# Rails From Scratch

### What's the point?
*  I created a repository called [Rails From Scratch](https://github.com/jhsu802701/rails_from_scratch_rails5), which consists of a detailed protocol for creating a high-quality Rails app that includes the basic elements I expect to need for all or most apps.
*  Having a standard operating procedure allows me to create a comprehensive app in a reasonable amount of time without cutting corners on quality.  Unlike other people, I do not have a photographic memory, and I thus must have the entire procedure written down.
* All of the details are spelled out to speed up the process, and tests are done frequently to make sure that everything works as expected.  Because I do not have a photographic memory, I rely on this procedure to make sure I cover all bases and don't forget any details.
* The end result is a Rails template app that I can use in my GenericApp gem.
* As I learn more, I can revise my procedures, and I can begin work on a new template for GenericApp without disrupting the old one.
* When future versions of Rails become available, I can use the old Rails From Scratch procedure as the basis for a new procedure and a new Rails template based on the new version of Rails.
* The steps in this document can be adapted for improving the quality of a legacy Rails app.

### What development environment should I use?
Use one of the rbenv-general Docker images.  The rbenv-general Docker images are built for creating new Rails apps and for running the Rails Tutorial Sample Apps.

### What are your core principles of creating Rails apps?
* Double down on the use of shortcuts, automation scripts, standard operating procedures, and cheat sheets. There are no rules, regulations, or ethical considerations prohibiting these tactics.
* Double down on the quality control. It's MUCH easier to establish quality control at the very beginning of the process than to try to introduce it much later. Because the bar will rise higher, what seems good enough today will appear mediocre tomorrow, and what seems mediocre but passable today will look like a train wreck tomorrow.
* Use test-driven development, or at least provide comprehensive tests promptly. If you don't have time to provide tests while the process of providing the desired features and capablities is still fresh in your mind, you likely won't be able to find the time to do so later. The time "saved" by skipping tests early on will be negated many times over later on when you accidentally break things without realizing it.
* Create your app with numerous small steps, not a handful of giant ones. My Rails From Scratch procedure consists of numerous small chapters. In the long run, this saves time, because I can keep track of what I'm doing and easily troubleshoot any surprises that crop up. Every time I go through Rails Tutorial, I lose track of where I am and what I'm doing, and troubleshooting can be difficult given the numerous actions taken all at once.
* Try out the Rails app in a fresh development environment by resetting the Docker container. If you don't do this periodically, you can end up in trouble later. Dependency mismanagement problems (also known as the infamous "works on my machine" problem) are frustrating and embarassing, and they reflect poorly on your knowledge of what it takes to make your app work.
* Integrating these principles in legacy projects may require some compromises, but the principles described here will improve the quality. It's hard to improve the quality of a project when you can't define the Holy Grail that you're aiming for.

### Why do you obsess over the MVC architecture?
* The Model-View-Controller architecture is the basis for the Ruby on Rails web framework. I found understanding MVC to be the most difficult part of understanding Ruby on Rails, but it is of critical importance. You don’t need a good understanding of MVC to get through Rails Tutorial, but you cannot be productive at working on Rails projects without it. Be prepared to obsess over MVC, but you should obsess over it efficiently.
* As a result, outlines and block diagrams of the object models and object controllers are provided on demand.  Other people can go through the files and directories of a Rails project manually, immediately understand all of the details of what’s going on, and remember it all without writing it down. While that works for Michael Hartl (Rails Tutorial author), doing that makes my head spin. To add insult to injury, the details are likely to change, and that means having to do it all over again. This is why I rely on automated shortcuts that get the computer to do all this work for me.
* The rails-erd gem is used to automatically create a block diagram of the models in use. The diagram lists model parameters and illustrates the relationships among the models.
* The railroady gem is used to automatically create a block diagram of the controllers in use. The diagram lists the controller methods and illustrates the relationships among the controllers.
* The annotate gem is used to add comments to model, fixture, testing, routing, and other files that summarize the current schema in the project. You won’t have to run the “rake routes” command as often, because the result is stored in the config/routes.rb file. You don’t have to manually go through the db/schema.rb file and db/migration files to get a list of the parameters for a model, because these parameters are listed in the associated model and unit test files.
* The “bundle viz” command is used to automatically create a block diagram of the required gems and illustrate the relationships among them.

### What other core elements do you include?
* There is a 1-step-build script.  After you git clone a Rails app in a fresh Rails development environment, you should be able to set up the app and get all of the tests to pass simply by running this script.  This provides assurance that everything works as expected.
* There are scripts for other basic tasks, such as starting the local server, making sure you are ready to git add and git commit, entering your credentials, testing the quality of your source code, and deploying your app to Heroku.
* By default, SSL is used in the production environment for better security.
* By default, Puma is used instead of WEBrick in in the production environment for better capacity.
* There are safeguards to prevent the accidental deletion or alteration of the database in the production environment.
* The test suite is enabled, and the command needed to rerun failed tests is be provided in the test output.
* Capybara is used to provide better integration tests that better simulate what happens at the web browser level.
* There are scripts for running only helper/mailer tests, model tests, or controller tests.  When you're focusing on just one small part of the app, you save time by running just a small subset of all tests.  Once you think you have finished that small part of the app, you run the entire test suite to make sure that you didn't accidentally break something else.
* Continuous integration badges are included in the README.md page.  This allows you to verify at-a-glance that everything works as expected and with no security issues.  (NOTE: The GenericApp gem automatically strips away these badges to avoid confusion when starting a new project.)
* Basic static pages (a home page, about page, and contact page) are included and can be customized later.
* Styling comes already included and preconfigured.  You can customize the styling later.
* User and admin authentication are included.  There are comprehensive integration tests to verify that the authentication features work as expected.  Information on admins is hidden from users and the general public.  In the interest of privacy, information on a given user is available to admins and that particular user but hidden from other users and the general public.  (If users need to be visible to other users or to the general public, you can make changes later.)
* Database seeding scripts are included so that you can see what admins, users, and the general public will see.
* Although SQLite is the default development database, there is a script for converting to a secure PostgreSQL setup.  Automating this procedure is important, because I screw it up every time I try to execute it manually.
* A development environment email server is provided to ensure that the automated email functions work as expected.
* The rails, pg, and nokogiri gems are pinned to versions that come pre-installed in the rbenv-general Docker image.  This is done to make sure that the process of setting up the app is quick.
* All other gems in the Gemfile are pinned as well.  This allows you to update the Gemfile in a series of small steps, which makes troubleshooting easier.

### Why does your Rails template app look so similar to the Rails Tutorial Sample App?
* It was much easier to copy the example of the Rails Tutorial Sample App than to create everything from scratch.  This is why I prefer Minitest and Bootstrap.
* However, I followed a different path when there was a better way or when Rails Tutorial does not address certain issues.  For example, the Devise gem is well-vetted and respected in the Rails community, and the Rails Tutorial Sample App's authentication system was provided for educational purposes.

### How can the Rails From Scratch procedure be used in legacy projects?
* The Rails From Scratch procedure doubles as a cheat sheet on elements to add to legacy projects.
* That said, some compromises will likely be necessary.  For example, you probably do NOT want to add the RuboCop or Rails Best Practices gems to legacy apps, because correcting hundreds or thousands of offenses will take too long.
