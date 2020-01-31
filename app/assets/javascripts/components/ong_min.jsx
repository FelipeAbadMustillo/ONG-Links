window.OngMin = createReactClass({
  render: function()
  {
    var url='';
    if (this.props.ong.ftOng.url)
    {
      url=this.props.ong.ftOng.url;
    }
    else
    {
      url='/assets/default-user.png';
    }

    return(
      <div className='minOng'>
        <img className='avatar-ong' src={url} />
        <div className='data-ong'>
          <a href={'/organization/' + this.props.ong.id}> {this.props.ong.nombreOng} </a>
          <br></br>
          <span> Rating general: {this.props.ong.rating} </span>
        </div>
      </div>
    );
  }
});
