== README

This app is for a tech challenge.

It hits an amazon api for its website ranking data.
The get request is run through a cron job on Heroku that uses Heroku's scheduler

The information can be updated, although I don't know why you'd want to (It auto-syncs back to the real stuff every 10 minutes).

editing can happen in a modal screen on the page and make an AJAX call to live-update the page. (i only allow url changes because changing the ranking number would cause multiple records to have the same ranking which doesn't make much sense.)

I host the server on Heroku and made a subdomain (rank.zacmitton.com) by changing a cname record on my godaddy account

