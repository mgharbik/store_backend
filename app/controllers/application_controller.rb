class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # since we don't need signup on a backend install
  def spree_signup_path
    main_app.login_path
  end
end
