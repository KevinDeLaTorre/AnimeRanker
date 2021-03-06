class ApplicationController < ActionController::Base

  def after_sign_in_path(resource)
    root_path
  end

  protected

  def authenticate_admin!
    authenticate_user!
    render root_url, notice: "Access needed to complete action." unless current_user.admin?
  end
end
