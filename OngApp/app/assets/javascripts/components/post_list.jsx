window.PostList = createReactClass({
  listing: function()
  {
    let l=[];
    let n=this.props.owners;
    this.props.posts.forEach(function(post,i)
    {
      if(post)
      {
        l.push(<MinPost key={i} data={post} owner={n[i]} />);
      }
    });
    return (l);
  },

  render: function()
  {
    return(<div>{this.listing()}</div>);
  }
});
