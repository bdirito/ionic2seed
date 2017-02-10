gulp = require 'gulp'
gulpBabel = require 'gulp-babel'

babel =
    options:
        presets: [ 'es2015' ]
        plugins: [ 'transform-es2015-modules-systemjs' ]
    files: './src/**/*.js6'

transpileFn = (options = babel.options) ->
    gulpBabel options

gulp.task 'babel', ->
    gulp.src babel.files, { base: '.' }
        .pipe transpileFn()
        .pipe gulp.dest '.'

module.exports = transpileFn
