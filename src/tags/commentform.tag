<commentform>
  <style>
  input,textarea{
    width: 100%;
    font-size: 1.5em;
    -webkit-border-radius: 5px;
            border-radius: 5px;
    border: 1px solid #ccc;
  }
  </style>
  <h3>{ opts.title }</h3>
  <form onsubmit={ submit }>
    投稿者名 : <input name="author_name" value=""><br>
    メールアドレス : <input name="author_email" value=""><br>
    投稿ID : <input name="post" value="2460"><br>
    内容 : <textarea name="content" id="" cols="30" rows="10"></textarea>
    <input(type="submit") value="送信">
  </form>
  <script>
    submit(e) {
      // コメントの送信
      var posturl = 'http://www.m-g-n.me/wp-json/wp/v2/comments';
      request
        .post( posturl )
        .withCredentials()
        .send({ author_name: 'megewokfwjfwjdewewweqdwane99wifefuewhfuwh88' })
        .send({ author_email: 'megaedceeweawwne@mgdewdena.co.jp' })
        .send({ post: '2460' })
        .send({ content: 'テストだおmeeewajdwiejdiewwdijweidjiddwidweegane<br>ewjdwew' })
        .end(function(err, res){
          console.log(res.body);
        });
    }
  </script>
</commentform>