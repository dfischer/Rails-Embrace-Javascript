# What is this?

Similar to how www.todomvc.com shows how to use various frameworks. Rails Embrace Javascript will follow on that note with Rails specific examples, as well as a more complicated back-end.

This project is in the very early stages. Right now we're brainstorming possible ways to handle this project.

Overall project goal: Build a billing application.

We want the application to be complex enough that it won't be as basic as using one model, like todomvc.

We want the application to use as least 3 models during interaction.

Proposed flow:

When interacting with the application, a user can create a project.
A user should be able to associate people to that project.
Each person listed on that project should have the ability to "record timesheets" per a day, and up to multiple times a day.

The idea is to do as much of this on one page as possible. 

A user clicks new project. They're already working with the project and they can dynamically add people to the project and immediately record hours against that person.

Architecture:

Two options.

1) Rails as an api as one app. Each "JS Framework" as a Rails app + that JS framework.

2) Rails back-end as an engine. Each JS framework loaded on top of that engine.

Number 1 is probably more likely to be a real-world scenario. Why have two apps? Why have the JS framework + Rails? So you get the rails/ruby eco system.
