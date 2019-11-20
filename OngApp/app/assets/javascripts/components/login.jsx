window.Login = createReactClass(
{
  getInitialState: function()
  {
    return(
    {
      email: '',
      password: ''
    });
  },

  handleUserInput: function(user_input)
  {
    this.setState(user_input);
  },

  handleFormSubmit: function()
  {
    var user_info = {email: this.state.email, password: this.state.password}
    $.post('/sign_in',{session: user_info});
    //no anda porque no tiene jquery
  },

  render: function()
  {
    return(
      <div>
        <h1>Iniciar sesión: Usuario</h1>
        <LoginForm email_val={this.state.email} pass_val={this.state.password}
          onUserInput={this.handleUserInput} onFormSubmit={this.handleFormSubmit} />
      </div>
    )
  }
});
