window.BackButton = createReactClass({
  render: function()
  {
    link = this.props.ong
    return(
      <div className = "backButton">
        <a href={link}>
          <img className="icon" src="/assets/back-button.png"/>
        </a>
      </div>
    );
  }
});
