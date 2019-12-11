window.ExpandedUser = createReactClass({
  render: function()
  {
    return(
      <div>
        <p>{this.props.desc}</p>
        <ul>
          <li>Edad: {this.props.years}</li>
          <li>Residencia: {this.props.residence}</li>
          <li>Ocupación: {this.props.duty}</li>
          <li>Contacto: {this.props.mail}</li>
        </ul>
      </div>
    );
  }
});
