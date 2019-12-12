window.OngList = createReactClass({
  render: function()
  {
    if(this.props.ongs)
    {
      return(
        <div>
          {this.props.ongs.map(function(ong)
            {
              return(
                <OngMin ong={ong} key={ong.id} />
              );
            })
          }
        </div>
      );
    }
    else
    {
      return(
        <p> Busca Ongs para poder suscribirte a ellas y enlistarte en sus actividades! </p>
      );
    }
  }
});
