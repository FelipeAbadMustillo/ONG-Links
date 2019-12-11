window.MinUser = createReactClass({
  render: function()
  {
    var url='';
    if (this.props.img.url)
    {
      url=this.props.img.url;
    }
    return(
      <div>
        <img src={url} />
        <div>
          <span>{this.props.name} {this.props.surName}</span>
          <span>Experiencia: {this.props.lvl}</span>
        </div>
      </div>
    );
  }
});
