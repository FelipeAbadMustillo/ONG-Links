window.NewsUser = createReactClass({
  render: function()
  {
    return(
      <div>
        <h2> Ultimos posts de tus subscripciones: </h2>
        <PostList posts={this.props.latest} owners={this.props.names} />
      </div>
    );
  }
});
