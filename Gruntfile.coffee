'use strict'

module.exports = (grunt) ->
  require('load-grunt-tasks') grunt
  grunt.initConfig
    watch:
      coffee:
        files: ['src/**/*.coffee', 'test/**/*.coffee', 'Gruntfile.coffee']
        tasks: ['coffeelint', 'coffee', 'file_append']
    coffee:
      options:
        sourceMap: false
        sourceRoot: ''
      server:
        files: [{
          expand: true
          cwd: 'src/'
          src: ['**/*.coffee']
          dest: 'tasks'
          ext: '.js'
        }, {
          expand: true
          cwd: 'test/'
          src: ['**/*test.coffee']
          dest: 'test'
          ext: '.js'
        }]
    coffeelint:
      all:
        files:
          src: [
            'src/**/*.coffee'
            'Gruntfile.coffee'
            'test/**/*.coffee'
          ]
        options:
          'no_trailing_whitespace': level: 'ignore'
          'max_line_length': level: 'ignore'
    jshint:
      all: [
        'Gruntfile.js'
        'tasks/*.js'
        '<%= nodeunit.tests %>'
      ]
      options: jshintrc: '.jshintrc'
    clean: tests: [ 'tmp' ]
    rsas:
      default_options:
        options:
          keepAlive: false
          port: 8080
    nodeunit: tests: [ 'test/*_test.js' ]
  grunt.loadTasks 'tasks'
  grunt.registerTask 'test', [
    'clean'
    'rsas'
    'coffeelint'
    #'nodeunit'
  ]
  grunt.registerTask 'default', [
    'coffeelint'
    'coffee'
    'jshint'
    'test'
    'watch'
  ]