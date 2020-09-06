[![CircleCI](https://circleci.com/gh/eebbesen/cfs.svg?style=svg&circle-token=bacf4c411d6f13c4804d4348ef5183a6a151fad1)](https://app.circleci.com/pipelines/github/eebbesen/cfs)

# Food Shelf

## Development
### Prerequisites
* Ruby 2.6.x
* Rails 6.x

#### Windows
Please see [our Windows 10 setup guide](windows-install.md)

You may want to see https://gorails.com/setup/windows/10

### Setup
Assuming you have Ruby and Rails installed already

    gem install bundler
    bundle install
    bin/rake db:migrate
    bin/rake db:seed
    yarn install --check-files
    bin/rails webpacker:install

The first two commands set up the computer and the application. The third command creates the database. And the fourth command inserts test data for local development.

### Run the application

    bin/rails server

Browse to http://localhost:3000 to access the application.

### Automated Testing

    bin/rake

## User administration
For security users are not allowed to create accounts for themselves. Instead an administrator must create users via the console.

    bin/rails console
will start the console

    User.create(email: 'me@example.com', password: 'Passw0rd!', password_confirmation: 'Passw0rd!')
will create the user

## Deployment to Heroku
### One-time setup
Assuming you have the [heroku client](https://devcenter.heroku.com/articles/heroku-cli) installed run
    heroku git:clone -a calfs-test
to add the heroku repo as a remote repository.

## Each deployment
From your master branch

    git push heroku master
    heroku run bin/rake db:migrate

The first command deploys the code. The second command runs database migrations.

If you are using a test environment you probably will want to run seeds (`heroku run bin/rake db:seed`) or add at least one user via the console (`heroku run bin/rails console` and follow create user instructions above).
