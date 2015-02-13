class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # before_filter :insure_login
  # before_filter :insure_login, except: [:index, :show, :]
  include SessionsHelper

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def insure_login
    redirect_to new_session_path unless current_user
  end

  helper_method :current_user
end
