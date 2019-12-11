window.NewsUser = createReactClass({
  render: function()
  {
    return(
      <div>
        <h3> Ultimos posts de tus subscripciones: </h3>
        <PostList posts={this.props.latest} owners={this.props.names} />
      </div>
    );
  }
});
