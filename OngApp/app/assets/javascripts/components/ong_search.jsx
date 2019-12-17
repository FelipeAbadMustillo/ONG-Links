window.OngSearch = createReactClass({
  getInitialState: function()
  {
    return({
      input: '',
      results: ''
    });
  },

  handleUserInput: function(param)
  {
    this.setState(param);
  },

  handleFormSubmit: function()
  {
    var searchParams={search: this.state.input};
    $.get('/search', searchParams)
    .done(function(response)
    {
      this.setState({results: response});
    }.bind(this));
  },

  render: function()
  {
    return(
      <div>
        <span id='title-search'> Buscar Ongs: </span>
        <SearchForm init_input={this.state.input} onUserInput={this.handleUserInput} onFormSubmit={this.handleFormSubmit} />
        <OngList ongs={this.state.results} />
      </div>
    );
  }
});
