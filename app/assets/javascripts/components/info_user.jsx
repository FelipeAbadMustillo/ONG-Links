window.InfoUser = createReactClass({
  setAcc: function()
  {
    if(this.props.show)
    {
      return(null);
    }
    else
    {
      var editUrl='/user/' + this.props.user.id + '/edit';
      return(
        <div>
          <div className="acciones">
            <img className="icon" src="/assets/editar-icon.png"/>
            <a href={editUrl}> Editar perfil </a>
          </div>
          <div className="acciones">
            <img className="icon" src="/assets/logout-icon.png"/>
            <a href='/sign_out'> Cerrar Sesión </a>
          </div>
        </div>
      );
    }
  },

  render: function()
  {
    return(
      <div>
        <MinUser img={this.props.user.ftUsu} name={this.props.user.nombreUsu} surName={this.props.user.apellidoUsu} lvl={this.props.user.exp} />
        <ExpandedUser years={this.props.user.edad} residence={this.props.user.localidadUsu} duty={this.props.user.ocupacion}
          mail={this.props.user.email} desc={this.props.user.desc} />
        {this.setAcc()}
      </div>
    );
  }
});
