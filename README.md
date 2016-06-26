# Hangout.sg API

Hangout.sg is an Android app made for the 2016 HDB Cool Ideas Hack hackathon organised by UP Singapore. This repository contains the backend API code that helps run the app.

The backend code provides actions to host, update, join or leave Events, and also view the Locations for hosting activities.

## Getting Started

These instructions will get you a copy of the repository up and running on your local machine for development and testing purposes.

### Prerequisites

Make sure that you have minimum `Ruby 2.3.0` installed in your local machine. The project currently uses `Rails 4.2.6` and also the `rails-api` gem. Development and testing is done on `sqlite3` whereas production database runs on `pg` (PostgreSQL).

### Installing

Clone the project to your directory and run the following to install all the dependencies needed:

```
$ bundle install
```

Then, run `rake db:migrate` and `rake db:seed` to run all the migrations and seed the database tables with some data:

```
$ rake db:migrate
$ rake db:seed
```

To check what the `rake db:seed` will create, you can open the file `db/seeds.rb`.
