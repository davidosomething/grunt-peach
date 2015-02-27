module.exports = (grunt)->
  grunt.initConfig({
    pkg: '<json:package.json>'

    peach:
      dev:
        src:  'input.sql'
        dest: 'output.sql'
        from: 'http://truth2012-dev.arn.com'
        to:   'http://truth2012.dev'
  })

  grunt.loadTasks('tasks')

