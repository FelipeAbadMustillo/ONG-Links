class LoginForm extends React.Component
{
  render()
  {
    return(
      <div>
        <form>
          <input name='email' placeholder='Dirección de E-Mail'/>
          <input name='password' placeholder='Contraseña'/>
          <input type='submit' value='Iniciar Sesión'/>
        </form>
      </div>
    )
  }
}
