# React + Sinatra Starter
_for [Heroku](https://www.heroku.com/) deployment_

## OVERVIEW
This is a simple starter to get you up and running with React & Sinatra. This is intended to provide:

* a lightweight Webpack config (for development and production)
* some helpful tooling for development workflow
* Heroku-ready deployment setup

#### WHY REACT + SINATRA?
This starter has been a surprisingly valuable tool. Sinatra provides a really simple web framework for serving our React frontend. You can quickly add some API endpoints (and/or GraphQL) and connect ActiveRecord. We get all the benefits of using Ruby's simple syntax and predicability, and React's powerful rendering.

## UP & RUNNING
* Clone the repo
* Install Ruby dependencies: `$ bundle install`
* Install JS dependencies: `$ npm install` _or_ `$ yarn`
* Fire up a dev server: `$ npm run dev` _or_ `$ yarn dev`
* Visit `http://localhost:8080` in your browser

#### WHATS HAPPENING?
When you run `npm run dev`, webpack is transpiling all your JS and CSS into a ghost file, `lib/app/public/bundle.js`. It then serves up the HTML file, `lib/app/views/index.html` on a ghost Express server on port 8080.

#### BUT WAIT, WE'RE NOT USING A SINATRA SERVER?
That's correct. To use the Puma server for Sinatra with the transpiled assets, take a look at the [Production Build section](#production-build)

## LINTING
To run the linter once:
```
$ npm run lint
// or
$ yarn lint
```

To run the watch task:
```
$ npm run lint:watch
// or
$ yarn lint:watch
```

## TESTING
To run the tests:
```
$ npm test
// or
$ yarn test
```

## PRODUCTION BUILD

- run `$ npm run build` _or_ `$ yarn build`
- run `ruby lib/app.rb` (We're using Puma by default)

This creates a transpiled asset file (`bundle.js`) of your JS and CSS in the `lib/app/public/` directory. This is great for production, but not so hot for development workflow as you would need to transpile _every time_ you made a change to the JS.

## DEPLOYING TO HEROKU
This app is set up for deployment to Heroku!

_This assumes you have already have a Heroku account and have the [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli) installed_

🚨 _Be sure to run the build script before deploying._ 🚨

```
$ heroku login
$ heroku create -a name-of-your-app
$ git push heroku master
$ heroku open
```

If you're unfamiliar with Heroku deployment (or just need a refresher), they have a really great walkthrough [here](https://devcenter.heroku.com/articles/getting-started-with-nodejs#introduction).


## CHANGELOG

### v1.0.0
This app has been updated to use React v15.5 and Webpack 2.3! 🎉

**Major Changes:**

* Updates React and ReactDOM to v15.5
* Updates Webpack to v2.3
* Enables hot-reloading for local development
* Adds initial test suite with Enzyme, Expect, and Mocha

**Minor Changes:**

* Updates all other dependencies to latest
* Updates eslint rules
* Updates npm scripts
* Adds yarn.lock
* Updates README

### v0.1.0
Initial release. Basic setup for a React + Sinatra integration
