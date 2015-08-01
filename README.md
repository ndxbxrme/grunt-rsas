# grunt-rsas [![Build Status](https://travis-ci.org/ndxbxrme/grunt-rsas.svg)](https://travis-ci.org/ndxbxrme/grunt-rsas)

> Really Simple Angular Server plugin for Grunt

## Getting Started
This plugin requires Grunt `~0.4.5`

If you haven't used [Grunt](http://gruntjs.com/) before, be sure to check out the [Getting Started](http://gruntjs.com/getting-started) guide, as it explains how to create a [Gruntfile](http://gruntjs.com/sample-gruntfile) as well as install and use Grunt plugins. Once you're familiar with that process, you may install this plugin with this command:

```shell
npm install grunt-rsas --save-dev
```

Once the plugin has been installed, it may be enabled inside your Gruntfile with this line of JavaScript:

```js
grunt.loadNpmTasks('grunt-rsas');
```

## The "rsas" task

### Overview
In your project's Gruntfile, add a section named `rsas` to the data object passed into `grunt.initConfig()`.

```js
grunt.initConfig({
  rsas: {
    options: {
      // Task-specific options go here.
    },
    your_target: {
      // Target-specific file lists and/or options go here.
    },
  },
});
```

### Options

#### options.port
Type: `Number`
Default value: `9000`

The port to listen on.

#### options.dir
Type: `String`
Default value: `current working directory`

The directory to serve.

#### options.env
Type: `String`
Default value: `development`

The current development environment `development/production`.

#### options.keepAlive
Type: `Boolean`
Default value: `true`

Keeps the server alive.

### Usage Examples

#### Default Options
Creates a simple angular server listening on port 8080

```js
grunt.initConfig({
  rsas: {
    options: {
      port: 8080
    },
  },
});
```

## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests for any new or changed functionality. Lint and test your code using [Grunt](http://gruntjs.com/).
