window.OngData = createReactClass({
  getInitialState: function()
  {
    return({
      input: '',
      usrRate: this.props.rate
    });
  },

  setRateData: function()
  {
    if(this.props.usr)
    {
      if(this.state.usrRate)
      {
        return(
          <span>Le diste {this.state.usrRate} puntos a esta Ong</span>
        );
      }
      else
      {
        return(
          <form onSubmit={this.handleRate}>
            <div className="search" id='rateForm'>
              <input type='number' step='0.1' min='0' max='5' className='input_search' id='rateInput' name='input' placeholder='Ratear'
                onChange={this.handleRateChange} />
              <input className='submit-search' id='rateSubmit' type='submit' value='Rate'/>
            </div>
          </form>
        );
      }
    }
    else
    {
      return(
        <span>Rating: {this.state.usrRate}</span>
      );
    }
  },

  handleRate: function(e)
  {
    e.preventDefault();
    $.ajax({
      url: '/rate/' + this.props.id,
      type: 'PATCH',
      data: {points: this.state.input}
    });
  },

  handleRateChange: function(e)
  {
    param={};
    param[e.target.name] = e.target.value;
    this.setState(param);
  },

  setSubData: function()
  {
    if(this.props.usr)
    {
      if(this.props.sub)
      {
        return(
          <strong className='msgSub'>Siguiendo</strong>
        );
      }
      else
      {
        return(
          <button className='subear' onClick={this.handleSub} > Seguir </button>
        );
      }
    }
    else
    {
      return null;
    }
  },

  handleSub: function(e)
  {
    $.ajax({
      url: '/subscribe/' + this.props.id,
      type: 'PATCH'
    });
  },

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
            {this.setRateData()}
          </div>
        </div>

        <div className='extraData-ong'>
          {this.setSubData()}
          <span>Seguidores <strong>{this.props.follows}</strong></span>
          <p>Descripción: {this.props.description}</p>
          <span>Contacto: {this.props.mail}</span>
          <span>Ubicación: {this.props.place}</span>
        </div>
      </div>
    );
  }
});
