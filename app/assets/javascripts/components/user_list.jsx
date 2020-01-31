window.UserList = createReactClass({
  render: function()
  {
    var idPost=this.props.post
    return(
      <div className='user-cont'>
        {this.props.users.map(function(user)
          {
            return(
              <MinUser show={{id: user.id, postId: idPost}} img={user.ftUsu} name={user.nombreUsu} surName={user.apellidoUsu} lvl={user.exp} key={user.id}/>
            );
          })
        }
      </div>
    );
  }
});
