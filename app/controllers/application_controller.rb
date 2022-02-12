class ApplicationController < ActionController::Base

  protected

  def authenticate_admin!
    authenticate_user!
    render root_url, notice: "Access needed to complete action." unless current_user.admin?
  end
end
