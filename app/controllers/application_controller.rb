class ApplicationController < ActionController::Base

  protected

  def authenticate_admin!
    authenticate_user!
    render status: 403
  end
end
