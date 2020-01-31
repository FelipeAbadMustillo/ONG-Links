window.NewPost = createReactClass(
{
  getInitialState: function()
  {
    return(
    {
      title: '',
      descPst: '',
      lugar: '',
      cantMin: '',
      cantMax: '',
      exp: '',
      hora: ''
    });
  },

  handleUserInput: function(input)
  {
    this.setState(input);
  },

  handleFormSubmit: function()
  {
    var data={title: this.state.title, descPst: this.state.descPst, lugar: this.state.lugar, cantMin: this.state.cantMin,
              cantMax: this.state.cantMax, exp: this.state.exp, hora: this.state.hora};
    $.post('/post', {post: data});
    //hacer una response piola
  },

  render: function()
  {
    return(
      <div>
        <h1>Crear un nuevo post</h1>
        <NewPostForm init_title={this.state.title} init_descPst={this.state.descPst} init_lugar={this.state.lugar} init_cantMin={this.state.cantMin}
         init_cantMax={this.state.cantMax} init_exp={this.state.exp} init_hora={this.state.hora}
         onUserInput={this.handleUserInput} onFormSubmit={this.handleFormSubmit} />
      </div>
    )
  }
});
