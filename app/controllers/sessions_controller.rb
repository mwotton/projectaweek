class SessionsController < ApplicationController
  def create
    Rails.logger.warn "in create"
    auth = request.env['rack.auth']
    omniauth = request.env['omniauth.auth']
    Rails.logger.warn(ap :auth => auth)
    Rails.logger.warn(ap :omniauth => omniauth)
    Rails.logger.warn(ap :params => params)
    
    self.current_hacker = Hacker.find_or_create_from_hash(auth)
    
    # Log the authorizing user in.
    # self.current_user = @auth.user

    render :text => "Welcome, #{current_user.twitter}."
  end
end
