# WorkCafe App

WorkCafe is a community maintained list of coffee shops/cafés friendly to work from.

Uses GeoJSON. Hosted on GitHub.

Check [WorkCafe/workcafe.github.io](https://github.com/WorkCafe/workcafe.github.io) repository on how to add new venues and locations.

[![Build Status](https://travis-ci.org/WorkCafe/app.png?branch=master)](https://travis-ci.org/WorkCafe/app)

These are the application sources that power the website.

The application is written in Ember.js and uses Bootstrap.
It is based on [Broccoli Boilerplate](https://github.com/iMedicare/emberjs-broccoli-boilerplate).

## Development

You will need Node.js installed first.
Try `nvm` to get Node.js up and running easily.

Once set, follow the installation steps:

```sh
$ npm install -g bower
$ npm install -g broccoli-cli
$ npm install -g testem
$ npm install
```

Use `bower.json` to manage third-party dependencies.

Inside the `app` folder, you will find an idiomatic Ember application structure.

Use JavaScript ES6 syntax and CoffeeScript to write JavaScript.

Use Less to write CSS.

The application has Twitter Bootstrap framework bundled. Make sure you make use
of provided widgets and UI components as much as possible.

* [Less reference](http://lesscss.org/functions/)
* [ES6 reference](https://github.com/square/es6-module-transpiler#supported-es6-module-syntax)

## Usage

Broccoli is our build tool. To run the development server use:

```sh
$ broccoli serve
```

To build a release, use:

```sh
$ rm -rf dist
$ BROCCOLI_ENV=production broccoli build ./dist
```

### Testing

Tests are written using QUnit.

Some simple conventions:

* Every feature needs an acceptance test
* Unit test are mandatory for libraries or parts of the code with complex logic

To run the tests change the environment to `test` and run `broccoli`:

```sh
$ BROCCOLI_ENV=test broccoli serve
```

Open the browser, QUnit runner should start on its own.

From command line, you can run the tests using `testem`:

```sh
$ rm -rf ./build && BROCCOLI_ENV=test broccoli build ./build && testem ci -l phantomjs,firefox
```

### Deployments

There is another repository with the compiled files for `workcafe.in` domain name.

Follow these steps to deploy the latest version:
* Use Broccoli to make a production build.
* Overwrite the old files in the [workcafe.github.io](https://github.com/WorkCafe/workcafe.github.io) with the new ones.
