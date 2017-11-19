# HOWTO

This is a step-by-step guide, mostly for @brucellino

## Prerequisites

Assume that you already have:

<!-- TODO : add links to how to get these -->
 - git client
 - ruby
 - rails
 - [travis gem](https://github.com/travis-ci/travis.rb#readme)
 - A decent editor. Suggest: 
  - VS Code
  - Atom

## Step-by-Step 

These are the steps you need to take to start from scratch:

### Setup

  1. Create the app
    - [ ] Create the rails app : `rails new hackfest-app` (call the app whatever you want)
    - [ ] `cd hackfest-app`
    - [ ] Init the repo : `git init`
    - [ ] Add everything and commit : `git add * ; git commit -a -m "Initial commit"`
    - [ ] Add the origin remote : `git add remote origin https://github.com/<username>/<repo-name>` where `<username>` is your github username and `<repo-name>` is the name of the repo (**protip** : call it the same as your rails name , _ie_ `hackfest-app`, if you can)
    - [ ] Create the repo on github;
    - [ ] Set the local repo to track the remote master branch : `git push --set-upstream origin master`
  1. Setup testing on Travis
    - [ ] Initialise the repo : `travis init`. This may fail, if the repo doesn't exist yet <!-- maybe enable first ? -->
    - [ ] Check `.travis.yml`
    - [ ] Add `.travis.yml` to the repo : `git add .travis.yml ; git commit -a -m "added travis" ; git push`
    - [ ] Enable the repo : `travis enable`
    - Check https://travis-ci.com/<username>/<app-name>` 
    - [ ] Add the badge to `README`. Should be `[![Build Status](https://travis-ci.org/<username>/<app-name>.svg?branch=master)](https://travis-ci.org/<username>/<app-name>)`
  1. Start work ! 
    - [ ] Run the db migration : `rails db:migrate`
    - [ ] Run tests : `rails test` (no tests added, so this should pass)
    - [ ] Start the server : `rails s`

### Optional test coverage

  - Gemnasium (gem vulnerability)
  - Code Climate (quality of code)


### Add Basic Styling

Add some front-end stuff to make the app look better

### Add Static Pages

Add a static pages controller and routes

### Add User Model

Model users with omniauth and devise

### Add Platform Status Dashboard

A model for the platform components and their statuses.

### Add Projects

A model for projects, their owners, members, components and statuses.

# Ideas

## A bot to track the members' progress

## Trigger deployment on code changes