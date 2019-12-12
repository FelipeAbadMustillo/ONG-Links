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
      <div>
        <h3> <a href={'/organization/' + this.props.data.organization_id}> {this.props.owner} </a> </h3>
        <a href={'/post/' + this.props.data.id}> {this.props.data.title} </a>
        <p>{msj}</p>
        <span>Locación: {this.props.data.lugar}</span>
      </div>
    );
  }
});
