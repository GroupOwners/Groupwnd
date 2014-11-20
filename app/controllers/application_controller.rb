class ApplicationController < ActionController::Base
  include Monban::ControllerHelpers
  protect_from_forgery with: :exception

  def keep_link_back_url
    session[:link_back] = request.referer
  end

  def current_user
    super || Guest.new
  end
end
