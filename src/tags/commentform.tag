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
  <form>
    投稿者名 : <input name="author_name" value=""><br>
    メールアドレス : <input name="author_email" value=""><br>
    投稿ID : <input name="post" value="2460"><br>
    内容 : <textarea name="content" id="" cols="30" rows="10"></textarea>
    <button>送信</button>
  </form>
</commentform>