<account>
  <subscription plan={ opts.plan } show_details="true" />
</account>

<subscription>
  <h3>親の名前 : { opts.plan.name }</h3>
  <megane plan={ opts.plan }>{text}</megane>
</subscription>

<megane>
  <h4>子の名前 : { opts.plan.plan.name }</h4>
  <yield/>
  this.text = "もたらした！"
</megane>