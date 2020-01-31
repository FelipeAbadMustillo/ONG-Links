window.OngAction = createReactClass({
  handleTerminar: function()
  {
    $.ajax({
      url: '/terminar_post/' + this.props.postId,
      type: 'PATCH',
    });
  },

  render: function()
  {
    if(this.props.owner)
    {
      return(
        <div className='cont-accion' >
          <UserList users={this.props.users} post={this.props.postId} />
          <div className='cont-terminar' >
            <button className='terminar-boton' onClick={this.handleTerminar} > Terminar Actividad </button>
          </div>
          <p>Esto le dara su respectiva experiencia a TODOS los usuarios enlistados anteriormente, de haber un error eliminar al respectivo usuario</p>
        </div>
      );
    }
    else
    {
      return(
        <p className='cont-accion'> Este post no pertenece a tu Ong </p>
      );
    }
  }
});
