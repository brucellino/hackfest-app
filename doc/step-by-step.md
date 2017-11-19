# HOWTO

This is a step-by-step guide, mostly for @brucellino. 

Typically, do a `git commit` at each level of a numbered list.

## Prerequisites

### Development Environment 

Assume that you already have:

<!-- TODO : add links to how to get these -->
 - github account
 - git client
 - ruby
 - rails
 - [travis gem](https://github.com/travis-ci/travis.rb#readme)
 - A decent editor. Suggest: 
   - VS Code
   - Atom

### Things we will use 

  - Zurb Foundation 6
  - Omniauth
  - GitHub auth

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

### Optional test coverage and monitoring

  - Gemnasium (gem vulnerability)
  - Code Climate (quality of code)
  - Coveralls 

### Optional community health

Use `https://github.com/<username>/<app-name>/community` to generate some documents to improve the community health of the project

  - [ ] Add Code of Conduct
  - [ ] Add a contributing file
  - [ ] Add an issue or pull request template

**Protip** : These can go in the `.github` directory to keep the top level clean.

### Add Basic Styling

Add some front-end stuff to make the app look better. 
Use the Zurb Foundation gem (we'll be using Foundation 6), and some fonts from Google fonts.

  1. [Add Zurb Foundation](https://github.com/zurb/foundation-rails)
    - [ ] Add `gem 'foundation-rails', '>=6'` to Gemfile. (**protip**: you may have to remove the constraint on the sass-rails gem to avooid a conflict - `sass (>= 3.3.0, < 3.5)`)
    - [ ] Install the gem : `bundle install`
    - [ ] Install Foundation to the asset pipeline : `rails generate foundation:install` (**protip**: This will overwrite the default application layout)
  1. Add fonts. Easiest is to `@import` them from [Google fonts](https://fonts.google.com)
    - [ ] Select the fonts you want from Google fonts. Choose a Serif for the headers, a sans-serif for the body and a monospace for code. _E.g._ : `Kreon|Quantico|Ubuntu+Mono`. (**Protip**: It doesn't matter which ones you choose, somebody will complain about them).
    - [ ] Add them to the `_settings.scss`
    - [ ] Change the font family for `body` and `header`: 
      - `$body-font-family, $header-font-family, $font-family-monospace`


### Add Static Pages

Add a static pages controller and routes. [1](http://blog.teamtreehouse.com/static-pages-ruby-rails). Probably a good idea to do this on a separate branch.

  1. [ ] Create feature branch : `git checkout -b static_pages`
  1. [ ] Generate a pages controller - `rails generate controller pages`
  1. [ ] Add a `show` action in `app/controllers/pages_controller.rb` to render pages
  1. [ ] Add a route in `app/config/routes.rb` (get with page name as variable, route to `pages#show`)
  1. [ ] Add a `home.html.erb` in `app/views/pages`
  1. [ ] Add a test for the static pages


### Add User Model

Model users with omniauth and devise

### Add Platform Status Dashboard

A model for the platform components and their statuses.

### Add Projects

A model for projects, their owners, members, components and statuses.

# Ideas

## A bot to track the members' progress

## Trigger deployment on code changes

## Slack hook on user milestones or actions

## Email with mailgun

### Add mailgun controller and messages model ? 

### Styling - use Ink ? 

### Updates

### Feedback form

