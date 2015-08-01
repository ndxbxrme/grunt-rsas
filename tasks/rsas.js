(function() {
  'use strict';
  module.exports = function(grunt) {
    var async, rsas;
    rsas = require('rsas');
    async = require('async');
    return grunt.registerMultiTask('rsas', 'Really Simple Angular Server', function() {
      var done, options;
      done = this.async();
      options = this.options({
        port: 9000,
        env: 'development',
        dir: process.cwd(),
        keepAlive: true
      });
      rsas.listen(options);
      if (!options.keepAlive) {
        return done();
      }
    });
  };

}).call(this);
