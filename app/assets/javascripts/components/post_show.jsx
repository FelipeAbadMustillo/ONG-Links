window.PostShow = createReactClass({
  setAccion: function()
  {
    var full = this.props.post.cantAct >= this.props.post.cantMax;
    if(this.props.post.expired)
    {
      return(null);
    }
    else
    {
      if(this.props.user)
      {
        return(
          <UserAction enlistado={this.props.user.enlistado} lleno={full} post_id={this.props.post.id} />
        );
      }
      else if(this.props.ong)
      {
        return(
          <OngAction owner={this.props.ong.owner} users={this.props.ong.users} postId={this.props.post.id} />
        );
      }
      else
      {
        return(
          <p>Necesitas logearte para poder enlistarte en las actividades</p>
        );
      }
    }
  },

  render: function()
  {
    return(
      <div>
        <ExpandedPost post={this.props.post} />
        {this.setAccion()}
      </div>
    );
  }
});
