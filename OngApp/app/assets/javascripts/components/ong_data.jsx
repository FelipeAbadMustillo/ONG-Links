window.OngData = createReactClass({
  render: function()
  {
    var bnnrUrl='';
    var imgUrl='';
    if (this.props.banner.url)
    {
      bnnrUrl=this.props.banner.url;
    }
    else
    {
      bnnrUrl='/assets/default-banner.png';
    }

    if (this.props.img.url)
    {
      imgUrl=this.props.img.url;
    }
    else
    {
      imgUrl='/assets/default-user.png';
    }

    return(
      <div className='ong-data'>
        <img src={bnnrUrl} className='banner' />
        <div className='container' id='ong-avatar'>
          <img src={imgUrl} className='avatar' id='ong-img' />
          <div>
            <strong>{this.props.name}</strong>
            <br></br>
            <span>Rating: {this.props.rate}</span>
          </div>
        </div>

        <div className='extraData-ong'>
          <span>Seguidores <strong>{this.props.follows}</strong></span>
          <p>Descripción: {this.props.description}</p>
          <span>Contacto: {this.props.mail}</span>
          <span>Ubicación: {this.props.place}</span>
        </div>
      </div>
    );
  }
});
