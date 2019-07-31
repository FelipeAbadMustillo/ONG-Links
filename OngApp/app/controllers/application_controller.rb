class ApplicationController < ActionController::Base
  include Clearance::Controller
  protect_from_forgery with: :exception
  helper_method :current_ong
  def current_ong
    if session[:ong_id]
      @current_ong ||= Organization.find(session[:ong_id])
    else
      @current_ong = nil
    end
  end
end
