class ApplicationController < ActionController::Base
  # before_filter :set_time_zone, if: :user_signed_in?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  # private

  #   def set_time_zone
  #     Time.zone = current_user.time_zone
  #   end
end
