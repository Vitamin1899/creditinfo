class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if current_user.admin?
      admin_credits_path
    else
      user_path(resource)
    end
  end

  private

  def authorize_admin!
    unless current_user.admin?
      redirect_to root_path
    end
  end

end
