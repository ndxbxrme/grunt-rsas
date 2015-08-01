'use strict'

module.exports = (grunt) ->
  rsas = require 'rsas'
  async = require 'async'
  grunt.registerMultiTask 'rsas', 'Really Simple Angular Server', ->
    done = @async()
    options = @options
      port: 9000
      env: 'development'
      dir: process.cwd()
      keepAlive: true
    rsas.listen options
    if not options.keepAlive then done()