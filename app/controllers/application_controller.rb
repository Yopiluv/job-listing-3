class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def require_is_admin
    if !current_user.admin?
      flash[:alert] = 'You are not admin!'
      rediect_to root_path
    end
  end
end
