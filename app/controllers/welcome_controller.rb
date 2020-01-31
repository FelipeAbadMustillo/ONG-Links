class WelcomeController < ApplicationController
  def index
    if current_ong
      redirect_to organization_index_path
    elsif signed_in?
      redirect_to user_index_path
    else
      redirect_to sign_in_path
    end
  end
end
