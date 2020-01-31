window.UserAction = createReactClass({
  handleAnotar: function()
  {
    $.ajax({
      url: '/post/' + this.props.post_id,
      type: 'PATCH'
    });
  },

  render: function()
  {
    if(this.props.enlistado)
    {
      return(
        <div className='cont-accion' id='boton-anotarse'>
          <p>Ya te anotaste a esta actividad!</p>
        </div>
      );
    }
    else if(this.props.lleno)
    {
      return(
        <div className='cont-accion' id='boton-anotarse'>
          <p>Esta actividad llegó a su maximo de personas posibles</p>
        </div>
      );
    }
    else
    {
      return(
        <div className='cont-accion' id='boton-anotarse'>
          <button className='terminar-boton' id='anotarse' onClick={this.handleAnotar} > Anotarse </button>
        </div>
      );
    }
  }
});
