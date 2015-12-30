var request = window.superagent;


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