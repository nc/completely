path = require 'path'

module.exports = (grunt) ->
  grunt.initConfig
    clean:
      css: 'completely.css'

    watch:
      build:
        files: [
          '*.scss',
          '*.html'
        ]
        tasks: ['build']

    sass: 
      dist: 
        files: 
          'completely.css' : 'completely.scss'

    grunt.loadNpmTasks 'grunt-sass'
    grunt.loadNpmTasks 'grunt-contrib-clean'
    grunt.loadNpmTasks 'grunt-contrib-watch'

    grunt.registerTask 'build', [
      'clean'
      'sass'
    ]

    grunt.registerTask 'default', 'build'
