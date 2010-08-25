class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'
  
  protected
  
  def current_user
    request.env['REMOTE_ADDR'].gsub!(/([0-9]+).([0-9]+).([0-9]+).([0-9]+)/, 'xxx.xxx.\3.\4')
  end
end
