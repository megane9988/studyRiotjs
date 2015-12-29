// 必要な機能の読み込み
var gulp = require('gulp');
var browserify = require('browserify');
var uglify = require('gulp-uglify'); //minifyする
var source = require('vinyl-source-stream'); //連結に必要なもの
var buffer = require('vinyl-buffer'); //連結に必要なもの

// browserifyにてdata.jsをbundle.jsにコンパイルさせるタスク。タスク名は'js'
gulp.task('js', function(){
  browserify({
    entries: ['src/js/data.js']
  })
  .bundle()
  .pipe(source('bundle.js'))
  .pipe(buffer())
  .pipe(uglify())
  .pipe(gulp.dest('src/js/'));
});

// src/js/を監視し、拡張子がjsファイルに変更があった場合、タスク名'js'を実行する
gulp.task('watch', function(){
    gulp.watch('src/js/*.js', ['js']);
});