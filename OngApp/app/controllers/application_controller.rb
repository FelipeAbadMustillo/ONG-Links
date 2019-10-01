class ApplicationController < ActionController::Base
  include Clearance::Controller
  protect_from_forgery with: :exception
  helper_method :current_ong, :any_logged, :require_ong_login, :require_adm, :enlistado?, :subscripto?

  def current_ong
    if session[:ong_id]
      @current_ong ||= Organization.find(session[:ong_id])
    else
      @current_ong = nil
    end
  end

  def require_ong_login
    if current_ong.nil?
      redirect_to ong_sign_in_path
    end
  end

  def any_logged
    if signed_in? || current_ong
      redirect_to root_url
    end
  end

  def require_adm
    if !signed_in? || !current_user.admin
      redirect_to root_path #not_adm_err_path
    end
  end

  def enlistado? (user,post)
    aux=false
    user.appointments.each do |ap|
      if ap.post_id==post.id
        aux=true
      end
    end
    return aux
  end

  def subscripto? (user,ong)
    aux=false
    user.follows.each do |fw|
      if fw.organization_id==ong.id
        aux=true
      end
    end
    return aux
  end
end
