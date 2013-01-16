class ApplicationController < ActionController::Base
  protect_from_forgery
  layout "bobcat"

  def current_user
    nil
  end

  helper_method :current_user
end
