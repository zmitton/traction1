== README

This app is for a tech challenge.

It hits an amazon api for its website ranking data.
The get request is run through a cron job on Heroku that uses Heroku's scheduler running every 10 minutes

The information can be updated, although I don't know why you'd want to (It auto-syncs back to the real stuff every 10 minutes).

pagination and modals were made using 2 easy-to-implement gems

editing can happen in a modal screen on the page and makes an AJAX call to live-update the page. (i only allow url changes because changing the ranking number would cause multiple records to have the same ranking which doesn't make much sense.)

Hosting is done for free on Heroku

The url shortener saves objects to the db and then uses their id to lookup the destination_url and update any analytics before redirecting user.

next steps for this project i think would be 
  making the search-box
  allowing for better mobile design (didnt even check it on my phone)
