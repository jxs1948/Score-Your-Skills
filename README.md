# README
This is a README file.

# Ruby on Rails application

This is the an application developed based on
[*Ruby on Rails Tutorial:
Learn Web Development with Rails*](http://www.railstutorial.org/)
by [Michael Hartl](http://www.michaelhartl.com/)
and is being practiced to develop the same application by Jaya sri Sunkara for assignment and practice purpose.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

This application is developed as an assignment for my coursework.
In this application we begin with created static pages, and css styling for the application which includes login for the user as well the view, edit and delete of user. 
It also has a page were we can list out all the users signed into the application. 
This application has one admin and only the admin has the access to delete the users that have logged in.


The heroku link for this application is https://safe-garden-29397.herokuapp.com/
