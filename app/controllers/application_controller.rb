class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Pundit
  rescure_from Pundit::NoAuthorizedError, with: :user_not_authorized
  protect_from_forgery with: :exception

  private

  def user_not_authorized
    flash[:alert] = "Acces denied."
    redirect_to (request.referred || root_path)
  end
end
