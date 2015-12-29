var gulp = require('gulp');
var browserify = require('browserify');
var source = require('vinyl-source-stream');

gulp.task('js', function(){
  browserify({
    entries: ['src/js/data.js']
  })
  .bundle()
  .pipe(source('bundle.js'))
  .pipe(gulp.dest('src/js/'));
});


gulp.task('watch', function(){
    gulp.watch('src/js/*.js', ['js']);  // ここがポイント
});