gulpCoffee = require 'gulp-coffee'
gulpRename = require 'gulp-rename'

gulp = require 'gulp'

coffee =
    options:
        bare: true
    files: './src/**/*.coffee'

transpileFn = (options = coffee.options) ->
    gulpCoffee options

gulp.task 'coffee',  ->
    gulp.src coffee.files, { base: '.' }
        .pipe transpileFn()
        .pipe gulpRename
            extname: '.js6'
        .pipe gulp.dest '.'


module.exports = transpileFn
