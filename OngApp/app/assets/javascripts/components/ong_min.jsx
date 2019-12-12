window.OngMin = createReactClass({
  render: function()
  {
    return(
      <div>
        <a href={'/organization/' + this.props.ong.id}> {this.props.ong.nombreOng} </a>
        <span> Rating general: {this.props.ong.rating} </span>
      </div>
    );
  }
});
