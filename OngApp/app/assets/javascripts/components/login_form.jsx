window.LoginForm = createReactClass(
{
  handleChange: function(e)
  {
    user_input={};
    user_input[e.target.name]=e.target.value;
    this.props.onUserInput(user_input);
  },

  handleSubmit: function(e)
  {
    e.preventDefault();
    this.props.onFormSubmit();
  },

  render: function()
  {
    return(
      <div>
        <form onSubmit={this.handleSubmit}>
          <input name='email' placeholder='Dirección de E-Mail' value={this.props.email_val}
            onChange={this.handleChange} />
          <input name='password' placeholder='Contraseña' value={this.props.pass_val}
            onChange={this.handleChange} />
          <input type='submit' value='Iniciar Sesión'/>
        </form>
      </div>
    )
  }
});
