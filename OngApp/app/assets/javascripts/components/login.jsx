window.Login = createReactClass(
{
  getInitialState: function()
  {
    var type={};
    if (this.props.ong)
    {
      type["adr"]="/ong_sign_in";
      type["chg"]="¿Eres un usuario normal?";
      type["placeHolder"]="Gmail oficial ONG";
      type["chgLink"]="/sign_in";
    }
    else
    {
      type["adr"]="/sign_in";
      type["chg"]="¿Eres una ONG?";
      type["placeHolder"]="Gmail";
      type["chgLink"]="/ong_sign_in";
    }
    return(
    {
      email: '',
      password: '',
      adress: type["adr"],
      title: type["chg"],
      mailTxt: type["placeHolder"],
      titleLink: type["chgLink"]
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
        <div className='imgCont'>
          <img className='imgLogin' src='/assets/logo_completo.png' />
        </div>
        <LoginForm email_val={this.state.email} pass_val={this.state.password} chg_txt={this.state.title} chg_url={this.state.titleLink} email_placeholder={this.state.mailTxt}
          onUserInput={this.handleUserInput} onFormSubmit={this.handleFormSubmit} />
      </div>
    )
  }
});
