var request = require('superagent');


//最新の投稿の取得
request
  .get('http://www.m-g-n.me/wp-json/wp/v2/posts')
  //取得したデータをパースし、recentpostdataに代入
  .end(function(err, res){
    var recentpostdata = res.body;
    //riotの独自タグ用のデータに格納
    riot.mount('newslist', {
      title: 'What is New',
      items: recentpostdata,
    });
  });

//最新のコメントの取得
request
  .get('http://www.m-g-n.me/wp-json/wp/v2/comments')
  //取得したデータをパースし、recentcommentdataに代入
  .end(function(err, res){
    var recentcommentdata = res.body;
    //riotの独自タグ用のデータに格納
    riot.mount('commentlist', {
      title: '最新のコメント',
      items: recentcommentdata,
    });
  });

var request = require('superagent');

riot.mount('commentform', {
    title: 'コメントフォーム',
});