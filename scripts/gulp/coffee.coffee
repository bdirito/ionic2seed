gulpCoffee = require 'gulp-coffee'
gulp = require 'gulp'

coffee =
    options:
        defaults:
            bare: true
    files: './src/**/*.coffee'

transpileFn = (options = coffee.options.defaults) ->
    gulpCoffee options

gulp.task 'coffee',  ->
    gulp.src coffee.files, { base: '.' }
        .pipe transpileFn()
        .pipe gulp.dest '.'


module.exports = transpileFn
