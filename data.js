var request = require('superagent');

//get形式でapiを叩く
request
  .get('http://www.m-g-n.me/wp-json/wp/v2/posts')
  //取得したデータをパースし、jsondataに代入
  .end(function(err, res){
    var jsondata = res.body;
    //riotの独自タグ用のデータに格納
    riot.mount('newslist', {
      title: 'What is New',
      items: jsondata,
    });
  });

