window.InfoOng = createReactClass({
  render: function()
  {
    var editUrl='/organization/' + this.props.ong.id + '/edit';
    var statsUrl='/analytics/' + this.props.ong.id;
    return(
      <div className='ong-data'>
        <OngData banner={this.props.ong.bnnr} img={this.props.ong.ftOng} name={this.props.ong.nombreOng} follows={this.props.seguidores}
        description={this.props.ong.desc} rate={this.props.ong.rating} mail={this.props.ong.email} place={this.props.ong.sede} />

        <div id="stats-post">
          <div className="acciones" id='stats'>
            <img className="icon" src="/assets/newPost-icon.png"/>
            <a href='/nuevo_post'> Publicar tarea </a>
          </div>
          <div className="acciones" id='post'>
            <img className="icon" src="/assets/stats-icon.png"/>
            <a href={statsUrl}> Estadisticas </a>
          </div>
        </div>
        <div className="acciones">
          <img className="icon" src="/assets/editar-icon.png"/>
          <a href={editUrl}> Editar perfil </a>
        </div>
        <div className="acciones">
          <img className="icon" src="/assets/logout-icon.png"/>
          <a href='/ong_sign_out'> Cerrar Sesión </a>
        </div>
      </div>
    );
  }
});
