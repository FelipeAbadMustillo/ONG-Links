window.MinPost = createReactClass({
  render: function()
  {
    var msj='';
    if(this.props.data.expired)
    {
      msj='Este post ya expiró';
    }
    else if(this.props.data.cantMin >= this.props.data.cantMax)
    {
      msj='Este post esta lleno';
    }
    else
    {
      msj='Se enlistaron ' + this.props.data.cantAct + ' personas a esta actividad';
    }

    return(
      <div className='min-post'>
        <strong> <a id='title-post' href={'/post/' + this.props.data.id}> {this.props.data.title}: </a> </strong>
        <a href={'/organization/' + this.props.data.organization_id}> Ong: {this.props.owner} </a>
        <p>Descripción: {this.props.data.descPst}</p>
        <span>{msj}</span>
      </div>
    );
  }
});
