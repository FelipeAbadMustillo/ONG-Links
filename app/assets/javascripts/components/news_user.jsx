window.NewsUser = createReactClass({
  render: function()
  {
    return(
      <div id='cont-postList'>
        <h2 id='news-title'> Tus subscripciones </h2>
        <PostList posts={this.props.latest} owners={this.props.names} />
      </div>
    );
  }
});
