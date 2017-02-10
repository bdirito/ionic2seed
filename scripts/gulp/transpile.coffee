gulp = require 'gulp'

coffee = require './coffee'
babel = require './babel'

transpile =
    files: './src/**/*.coffee'

gulp.task 'transpile', ->
    gulp.src transpile.files, { base: '.' }
        .pipe coffee()
        .pipe babel()
        .pipe gulp.dest '.'
