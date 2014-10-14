module.exports = (grunt) ->
  # Project configuration.
  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")
    uglify:
      options:
        banner: "/*! <%= pkg.name %> <%= grunt.template.today(\"yyyy-mm-dd\") %> */\n"

      build:
        src: "build/_bower.js"
        dest: "build/<%= pkg.name %>.min.js"

    bower_concat:
      all:
        dest: 'build/_bower.js'
        cssDest: 'build/_bower.css'

    watch:
      css:
        files: 'src/*.less'
        tasks: ['less']
        options:
          livereload: true
      html:
        files: "src/*.haml"
        tasks: ["haml"]
        options:
          livereload: true

    less:
      production:
        files:
          "build/main.css" : "src/main.less"
          "build/bootstrap.css" : "bower_components/bootstrap//less/bootstrap.less"

    haml:
      dist:
        files:
          "build/index.html" : "src/index.haml"

  
  # Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks "grunt-contrib-uglify"
  grunt.loadNpmTasks "grunt-bower-concat"
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-less'
  grunt.loadNpmTasks 'grunt-contrib-haml'
  
  # Default task(s).
  grunt.registerTask "default", ["uglify"]
  return
