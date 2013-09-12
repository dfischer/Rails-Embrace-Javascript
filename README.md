# What is this?

Similar to how www.todomvc.com shows how to use various frameworks. Rails Embrace Javascript will follow on that note with Rails specific examples, as well as a more complicated back-end.

This project is in the very early stages. Right now we're brainstorming possible ways to handle this project.

## Overall project goal: Build a timesheet application.

We want the application to be complex enough that it won't be as basic as using one model, like todomvc.

We want the application to use as least 3 models during interaction.

# Proposed flow:

When interacting with the application, a user can create a project.
A user should be able to associate people to that project.
Each person listed on that project should have the ability to "record timesheets" per a day, and up to multiple times a day.

The idea is to do as much of this on one page as possible. We want to eliminate the "new/edit" views as being separate views. Everything should be inline and happen on the project page itself. In place editing of fields. Dynamically adding people and time_logs without refreshing.

A user clicks new project. They're already working with the project and they can dynamically add people to the project and immediately record hours against that person.

# Architecture:

## Back-end + Front-end architecture for examples

1) Rails as an api as one app. Each "JS Framework" as a Rails app + that JS framework.

```
rails-embrace-javascript/
  timesheet-api/
  timesheet-ember/
  timesheet-angular/
  timesheet-batman/
  timesheet-omakase # the rails way, turbolinks, etc...
```

2) Rails back-end as an engine. Each JS framework loaded on top of that engine.
```
rails-embrace-javascript/
  timesheet-core/
  timesheet-ember/
  timesheet-angular/
  timesheet-batman/
  timesheet-omakase/ # the rails way, turbolinks, etc...
```

Number 1 is probably more likely to be a real-world scenario. Why have two apps? Why have the JS framework + Rails? So you get the rails/ruby eco system.
If we wanted to an app that is just the omakase way, it seems only #2 is an option?

Repo will contain a folder for each implementation.

Reasons to have JS + Rails app:

1. Rails Ecosystem
2. Coffeescript
3. Spider-friendly views (can output on initial load from server-side).

## Back-end architecture modeling

```
Project
  has_many :people
Person
  belongs_to :project
  has_many :time_logs
TimeLog
  belongs_to :project
  belongs_to :person
```
