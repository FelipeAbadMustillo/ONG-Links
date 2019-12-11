window.NewPostForm = createReactClass(
{
  handleChange: function(e)
  {
    chg={};
    chg[e.target.name]=e.target.value;
    this.props.onUserInput(chg);
  },

  handleDateChange: function(e)
  {
    var name='hora';
    var chg={};
    if(chg[name] = e.toDate())
    {
      this.props.onUserInput(chg);
    }
  },

  handleSubmit: function(e)
  {
    e.preventDefault();
    this.props.onFormSubmit();
  },

  render: function()
  {
    var inputProps={name: 'hora'};
    return(
      <form encType='multipart/form-data' onSubmit={this.handleSubmit}>
        <div className="form">
          <input className='input_text' name='title' placeholder='Título' value={this.props.init_title}
            onChange={this.handleChange} />
          <input className='input_text' name='descPst' placeholder='Descripción' value={this.props.init_descPst}
            onChange={this.handleChange} />
          <input className='input_text' name='lugar' placeholder='Lugar' value={this.props.init_lugar}
            onChange={this.handleChange} />

          <input type='number' step='1' min='0' className='input_text' name='cantMin' placeholder='Cantidad minima de participantes' value={this.props.init_cantMin}
            onChange={this.handleChange} />
          <input type='number' step='1' min='0' className='input_text' name='cantMax' placeholder='Cantidad maxima de participantes' value={this.props.init_cantMax}
            onChange={this.handleChange} />
          <input type='number' step='10' min='0' className='input_text' name='exp' placeholder='Experiencia dada' value={this.props.init_exp}
            onChange={this.handleChange} />

          <Datetime input={false} open={true} inputProps={inputProps} value={this.props.init_hora}
            onChange={this.handleDateChange} />

          //descentrar el label y decorar el seleccionar archivo
          <label>Imagen de la actividad:</label>
          <input type="file" name="ftPst"
            onChange={this.handleChange} />

          <input className='submit' type='submit' value='Postear'/>
        </div>
      </form>
    )
  }
});
