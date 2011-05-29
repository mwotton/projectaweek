class ApplicationController < ActionController::Base
  protect_from_forgery
  protected
  def current_hacker
    @current_hacker ||= Hacker.find_by_id(session[:hacker_id])
  end

  def signed_in?
    !!current_hacker
  end

  helper_method :current_hacker, :signed_in?

  def current_hacker=(hacker)
    @current_hacker = hacker
    session[:hacker_id] = hacker.id
  end
end
