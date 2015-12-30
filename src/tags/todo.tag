<todo>
  <!-- layout -->
  <h3>ココが独自タグですお</h3>
  <h1>マウントからとってきたタイトル → { opts.title }</h3>
  <p>{ opts.content }</p>
  <style>
    todo { display: block }
    todo h3 { font-size: 120% }
    /** other tag specific styles **/
  </style>
  var title = opts.title;
  var content = opts.content;
  console.log(title,content);
</todo>