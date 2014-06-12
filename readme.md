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

You can use `nvm` to get Node up and running.

Once set, install `ember-cli` globally and the rest of the dependencies.

    $ npm install -g ember-cli
    $ npm install -g bower
    $ npm install
    $ bower install -F

Use `bower.json` to manage third-party dependencies.

### Conventions

Inside the `app` folder, you will find an idiomatic Ember application structure.

You can use JavaScript ES6 syntax and CoffeeScript to write JavaScript.

You can use Less to write CSS.
The application has Bootstrap CSS framework bundled. Feel free to use it.

* [Less reference](http://lesscss.org/functions/)
* [ES6 reference](https://github.com/square/es6-module-transpiler#supported-es6-module-syntax)

## Usage

[Ember CLI](https://github.com/stefanpenner/ember-cli) is our build tool
(which still uses Broccoli). To run the development server use:

    $ ember serve

To build a release, use:

    $ BROCCOLI_ENV=production ember build

This will create a build in the `./dist` folder.

### Testing

We are using QUnit to write tests.
Improved Ember.js testing support is provided through the
[ember-qunit](https://github.com/rpflorence/ember-qunit) package.

To run the tests change the environment to `test` and run:

    $ BROCCOLI_ENV=test ember serve

Open the browser, QUnit runner should start on its own.

From command line, you can run the:

    $ BROCCOLI_ENV=test ember test

### Deployments

There is another repository with the compiled files for `workcafe.in` domain name.

Follow these steps to deploy the latest version:
* Use Broccoli to make a production build.
* Overwrite the old files in the [workcafe.github.io](https://github.com/WorkCafe/workcafe.github.io) with the new ones.
