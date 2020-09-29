# README

Run the following commands to install app:

- git clone https://github.com/michaelmaben/tinyurl.git
- bundle install
- rails db:migrate
- rails s (by default the server will use port 3000)

Use the following links to access features in the app:

List all links:
  - http://localhost:3000/links/

Create a tiny url
  - Click on link "Create Short URL" on index page or type in http://localhost:3000/links/new in the browser

Display Statistics of a url
  - Click on "Get Statistics" on the side of the URL in index page or type in http://localhost:3000/links/:id in the browser
