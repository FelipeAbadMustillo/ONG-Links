window.BackButton = createReactClass({
  render: function()
  {
    link = ""
    if(this.props.ong)
    {
      link = "/organization"
    }
    else
    {
      link = "/user"
    }

    return(
      <div className = "backButton">
        <a href={link}>
          <img className="icon" src="/assets/back-button.png"/>
        </a>
      </div>
    );
  }
});
