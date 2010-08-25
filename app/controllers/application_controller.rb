class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'
  
  protected
  
  def current_user
    request.env['REMOTE_ADDR']
  end
end
