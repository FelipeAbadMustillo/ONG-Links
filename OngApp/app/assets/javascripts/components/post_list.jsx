window.PostList = createReactClass({
  listing: function()
  {
    let l=[];
    this.props.posts.forEach(function(post,i)
    {
      if(post)
      {
        l.push(<MinPost data={post} owner={this.props.owners[i]} />);
      }
    });
    return l;
  },

  render: function()
  {
    console.log(this.listing);
    return(<div>{this.listing}</div>);
  }
});
