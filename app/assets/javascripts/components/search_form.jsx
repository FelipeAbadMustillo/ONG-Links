window.SearchForm = createReactClass({
  handleChange: function(e)
  {
    param={};
    param[e.target.name]=e.target.value;
    this.props.onUserInput(param);
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
        <div className="search">
          <input className='input_search' name='input' placeholder='Buscar Aquí...' value={this.props.init_input}
            onChange={this.handleChange} />
          <input className='submit-search' type='submit' value='Buscar'/>
        </div>
      </form>
    );
  }
});
