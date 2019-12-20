window.MinUser = createReactClass({
  setName: function()
  {
    if(this.props.show)
    {
      var url='/user/' + this.props.show.id
      return(
        <a href={url} ><strong className='usrName'>{this.props.name} {this.props.surName}</strong></a>
      );
    }
    else
    {
      return(
        <strong className='usrName'>{this.props.name} {this.props.surName}</strong>
      );
    }
  },

  setBoton: function()
  {
    if(this.props.show)
    {
      return(
        <button className='eliminar' id='eliminar-usu' onClick={this.handleEliminar} > Eliminar </button>
      );
    }
    else
    {
      return(null);
    }
  },

  handleEliminar: function(e)
  {
    var params={post_id: this.props.show.postId,user_id: this.props.show.id}

    $.ajax({
      url: '/eliminar_appointment',
      type: 'DELETE',
      data: params
    });
  },

  render: function()
  {
    var url='';
    var extraId='';
    if (this.props.img.url)
    {
      url=this.props.img.url;
    }
    else
    {
      url='/assets/default-user.png';
    }

    if(this.props.show)
    {
      extraId='';
    }
    else
    {
      extraId='avatar-usr';
    }

    return(
      <div className='container' id={extraId}>
        <img className='avatar' src={url} />
        <div id='data-minUsr' >
          {this.setName()}
          <span className='extraData'>Experiencia: {this.props.lvl}</span>
        </div>
        {this.setBoton()}
      </div>
    );
  }
});
