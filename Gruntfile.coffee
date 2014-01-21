module.exports = (grunt) ->
  grunt.initConfig
    coffee:
      compile:
        options:
          bare: true

        files:
          "completely.js": "completely.coffee"

   	watch:
     	build:
       	files: ['**/*.coffee']
       	tasks: ['coffee']

    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-watch'

    grunt.registerTask 'default', 'coffee'