class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
  include SessionsHelper
  skip_before_action :require_login

  private

    def require_login
      if logged_in?
        redirect_to root_url
      end
    end
end

