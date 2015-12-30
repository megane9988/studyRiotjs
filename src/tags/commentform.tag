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
  <form id="postcomment" onsubmit={submit}>
    投稿者名 : <input name="author_name" value="megane"><br>
    メールアドレス : <input name="author_email" value="hajihaji9988@gmail.com"><br>
    投稿ID : <input name="post" value="2460"><br>
    内容 : <textarea name="content" id="" cols="30" rows="10" value="なにか"></textarea>
    <input type="submit" value="送信">
  </form>
  <script>
    author_name = this.author_name.value,
    author_email = this.author_email.value,
    post = this.post.value,
    content = this.content.value,
    this.text = "aa";
    submit(e) {
      console.log(author_name);
      console.log(author_email);
      console.log(post);
      console.log(content);
      console.log(this.text);
    }
  </script>
</commentform>