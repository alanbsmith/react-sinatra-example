# React-Ruby
An example app using Sinatra and React

### UP & RUNNING
- clone the repo
- `bundle install`
- `npm install`
- `npm run dev`
- `ruby lib/app.rb`
- open your browser to `localhost:8080`

### WHATS HAPPENING
- when you run `npm run dev`, webpack is transpiling all your JS and CSS into a ghost file (`lib/app/public/app.js`). It then serves up the html file in `lib/app/views/index.html` on a ghost Express server on port 8080.

### BUT WAIT, WE'RE NOT _REALLY_ USING SINATRA?
That's correct. To use the Puma server for Sinatra with the transpiled assets, you'll need to do the following:

- run `npm run build`
- run `ruby lib/app.rb`

This creates a transpiled asset file (`app.js`) of your JS and CSS in the `lib/app/public/` directory. This is great for production, but not so hot for development workflow as you would need to transpile _every time_ you made a change to the JS.

### WHY NOT JUST USE RAILS?
While the React-Rails gem is really great, this is a really simple and lightweight option for using Sinatra and React together without all the weight of Rails.

