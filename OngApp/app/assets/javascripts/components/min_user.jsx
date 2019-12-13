window.MinUser = createReactClass({
  render: function()
  {
    var url='';
    if (this.props.img.url)
    {
      url=this.props.img.url;
    }
    return(
      <div className='container'>
        <img className='avatar' src={url} />
        <div id='data-minUsr' >
          <strong className='usrName'>{this.props.name} {this.props.surName}</strong>
          <span className='extraData'>Experiencia: {this.props.lvl}</span>
        </div>
      </div>
    );
  }
});
