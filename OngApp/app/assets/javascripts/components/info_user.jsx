window.InfoUser = createReactClass({
  render: function()
  {
    return(
      <div>
        <MinUser img={this.props.user.ftUsu} name={this.props.user.nombreUsu} surName={this.props.user.apellidoUsu} lvl={this.props.user.exp} />
        <ExpandedUser years={this.props.user.edad} residence={this.props.user.localidadUsu} duty={this.props.user.ocupacion}
          mail={this.props.user.email} desc={this.props.user.desc} />
      </div>
    );
  }
});
