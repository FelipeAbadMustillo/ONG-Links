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
      <form onSubmit={this.handleSubmit}>
        <div className="form">
          <input className='input_text' name='email' placeholder='Dirección de E-Mail' value={this.props.email_val}
            onChange={this.handleChange} />
          <input className='input_text' name='password' placeholder='Contraseña' type='password' value={this.props.pass_val}
            onChange={this.handleChange} />
          <input className='submit' type='submit' value='Iniciar Sesión'/>
        </div>
      </form>
    )
  }
});
