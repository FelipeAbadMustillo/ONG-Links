class ResetEmailMailer < ApplicationMailer

  def reset_pwd(user)
    @user = user
    mail(from: Clearance.configuration.mailer_sender, to: @user.email, subject: "Reestablecer contraseña OngLinks")
  end
end
