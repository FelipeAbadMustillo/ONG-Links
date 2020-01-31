class PasswordsController < Clearance::PasswordsController

  def new
  end

  def create
    if user = find_user_for_create
      user.forgot_password!
      mail=ResetEmailMailer.reset_pwd(user)
      mail.deliver_later
    end
  end

  def edit
    @user = find_user_for_edit

    if params[:token]
      session[:password_reset_token] = params[:token]
      #redirect_to url_for
    end
  end

  def update
    @user = find_user_for_update

    if @user.update_password(password_from_password_reset_params)
      sign_in @user
      redirect_to user_index_path
      session[:password_reset_token] = nil
    else
      flash_failure_after_update
      render :action=>'edit'
    end
  end

  private
  def password_from_password_reset_params
    params.dig(:password_reset, :password)
  end
end
