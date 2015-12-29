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
  <form action="http://www.m-g-n.me/wp-json/wp/v2/comments" method="post">
    投稿者名 : <input name="author_name" value=""><br>
    メールアドレス : <input name="author_email" value=""><br>
    投稿ID : <input name="post" value="2460"><br>
    内容 : <textarea name="content" id="" cols="30" rows="10"></textarea>
    <button>送信</button>
  </form>
  <script>
    this.items = opts.items

    this.edit = function(e) {
      this.text = e.target.value
    }.bind(this)

    this.add = function(e) {
      if (this.text) {
        this.items.push({ title: this.text })
        this.text = this.input.value = ''
      }
    }.bind(this)

    this.filter = function(item) {
      return !item.hidden
    }.bind(this)

    this.toggle = function(e) {
      var item = e.item
      item.done = !item.done
      return true
    }.bind(this)
  </script>
</commentform>