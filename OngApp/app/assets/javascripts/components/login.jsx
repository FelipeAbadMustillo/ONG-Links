window.Login = createReactClass(
{
  getInitialState: function()
  {
    var type={};
    if (this.props.ong)
    {
      type["adr"]="/ong_sign_in";
      type["name"]="Organización";
    }
    else
    {
      type["adr"]="/sign_in";
      type["name"]="Usuario";
    }
    return(
    {
      email: '',
      password: '',
      adress: type["adr"],
      title: type["name"]
    });
  },

  handleUserInput: function(user_input)
  {
    this.setState(user_input);
  },

  handleFormSubmit: function()
  {
    var user_info = {email: this.state.email, password: this.state.password}
    $.post(this.state.adress,{session: user_info});
    //hacer un response piola
  },

  render: function()
  {
    return(
      <div>
        <h1>Iniciar sesión: {this.state.title}</h1>
        <LoginForm email_val={this.state.email} pass_val={this.state.password}
          onUserInput={this.handleUserInput} onFormSubmit={this.handleFormSubmit} />
      </div>
    )
  }
});
