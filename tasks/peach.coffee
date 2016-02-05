# grunt-peach
# https://github.com/davidosomething/grunt-peach
#
# Copyright (c) 2013 David O'Trakoun
# Licensed under the MIT license
#
# Peach dependency is licensed under BSD, please
# @see {@link https://github.com/petesaia/Peach}

Peach = require 'PeachTests/assets/js/peach'

module.exports = (grunt)->
  taskName        = 'peach'
  taskDescription = 'Replace values in SQL, including PHP serialized strings.'

  grunt.registerMultiTask taskName, taskDescription, ->
    done       = @async()
    isSuccess  = false
    options    = @options({ force: true })

    grunt.log.writeln "   Changing #{@data.from} in #{@data.src} to #{@data.to}"
    haystack = grunt.file.read(@data.src)
    resultObject = Peach.migrate(haystack, @data.from, @data.to)

    # if --verbose flag is on, show resultObject
    grunt.verbose.writeln JSON.stringify(resultObject, null, 2)

    isSuccess = ('new_haystack' of resultObject)
    if isSuccess
      output = resultObject.new_haystack

      grunt.log.write "   Replaced #{resultObject.replaced_count} instances, "
      grunt.log.write "#{resultObject.serialized_count} serialized. "
      grunt.log.writeln "Characters modified: #{resultObject.char_diff}"

      grunt.file.write(@data.dest, output)
      grunt.log.writeln(output) if options.log

      grunt.log.oklns "Wrote migrated SQL dump to #{@data.dest}"

    else
      grunt.log.errorlns 'Migration failed!'

    done(isSuccess or options.force)
    return

