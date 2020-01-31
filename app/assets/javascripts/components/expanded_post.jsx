window.ExpandedPost = createReactClass({
  render: function()
  {
    var antCant='';
    if(this.props.post.expired)
    {
      antCant=<span>Este post ya expiró</span>;
    }
    else
    {
      antCant=<span>Se enlistaron {this.props.post.cantAct} personas a esta actividad:</span>;
    }

    return(
      <div className='post-container'>
        <strong id='news-title'> {this.props.post.title} </strong>
        <p id='descPost'> {this.props.post.descPst} </p>

        <div className='mono-cont'>
          <div>
            <img className="icon" id='icon-location' src='/assets/locacion-icon.png' />
            <span> Ubicación: </span>
          </div>
          <span> {this.props.post.lugar} </span>
        </div>

        <div className='mono-cont'>
          <span> Recompensa: </span>
          <span> {this.props.post.exp} </span>
        </div>

        <div className='multi-cont'>
          <div className='mono-cont'>
            <span> Capacidad: </span>
            <span> {this.props.post.cantMin} - {this.props.post.cantMax} </span>
          </div>

          <div className='mono-cont'>
            <span> Horario: </span>
            <span> {moment(this.props.post.hora).format('DD MMM YYYY h:mm a')} </span>
          </div>
        </div>

        {antCant}
      </div>
    );
  }
});
