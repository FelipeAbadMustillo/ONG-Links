class SessionController < Clearance::SessionsController
  def new
  end

  def create
    @user = authenticate(params)

    sign_in(@user) do |status|
      if status.success?
        redirect_to root_url
      else
        flash.now.alert = status.failure_message
        render template: "session/new", status: :unauthorized
      end
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
