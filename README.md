little_twitter
==============

## Config

To run this app you need a .env file with the following values:

    TWITTER_CONSUMER_KEY=
    TWITTER_CONSUMER_SECRET=
    LITTLE_PRINTER_ID=

### Running the app

This app runs a Daemon process.

To run it with Foreman do:

    bundle exec foreman start

To run it without Foreman do:

    bundle exec dotenv ruby daemon.rb run
