window.MinPost = createReactClass({
  handleEliminar: function(e)
  {
    $.ajax({
      url: '/post/' + this.props.data.id,
      type: 'DELETE'
    });
  },

  render: function()
  {
    var msj='';
    var link='';
    if(this.props.data.expired)
    {
      msj='Este post ya expiró';
    }
    else if(this.props.data.cantAct >= this.props.data.cantMax)
    {
      msj='Este post esta lleno';
    }
    else
    {
      msj='Se enlistaron ' + this.props.data.cantAct + ' personas a esta actividad';
    }

    if(this.props.owner=='show')
    {
      link=null;
    }
    else if(this.props.owner)
    {
      link= <a href={'/organization/' + this.props.data.organization_id}> Ong: {this.props.owner} </a>;
    }
    else
    {
      link= <button className='eliminar' onClick={this.handleEliminar} > ¿Eliminar post? </button>;
    }

    return(
      <div className='min-post'>
        <strong> <a id='title-post' href={'/post/' + this.props.data.id}> {this.props.data.title}: </a> </strong>
        <p>Descripción: {this.props.data.descPst}</p>
        <span>{msj}</span>
        {link}
      </div>
    );
  }
});
