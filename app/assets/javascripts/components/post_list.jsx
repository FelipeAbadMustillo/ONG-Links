window.PostList = createReactClass({
  listing: function()
  {
    let l=[];
    let n=this.props.owners;

    this.props.posts.forEach(function(post,i)
    {
      if(post)
      {
        if(n!='show' && n)
        {
          l.push(<MinPost key={i} data={post} owner={n[i]}/>);
        }
        else
        {
          l.push(<MinPost key={i} data={post} owner={n} />);
        }
      }
    });

    return (l);
  },

  render: function()
  {
    return(<div className='post-list'>{this.listing()}</div>);
  }
});
