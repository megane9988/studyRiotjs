var request = window.superagent;


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
