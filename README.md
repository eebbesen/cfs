# Food Shelf

# Development
## Prerequisites
* Ruby 2.6.x
* Rails 6.x

### Windows
You may want to see https://gorails.com/setup/windows/10

## Setup
Assuming you have Ruby and Rails installed already

    gem install bundler
    bundle install
    bin/rake db:migrate
    bin/rake db:seed

The first two commands set up the computer and the application. The third command creates the database. And the fourth command inserts test data for local development.

## Run the application

    bin/rails server

Browse to http://localhost:3000 to access the application

## Automated Testing

    bin/rails test

# User administration
For security users are not allowed to create accounts for themselves. Instead an administrator must create users via the console.

    bin/rails console
will start the console

    User.create(email: 'me@example.com', password: 'Passw0rd!', password_confirmation: 'Passw0rd!')
will create the user