class SessionsController < ApplicationController
  def create
    Rails.logger.warn "in create"
    auth = request.env['omniauth.auth']
    Rails.logger.warn(auth.inspect)
    Rails.logger.warn(params.inspect)
    
    self.current_hacker = Hacker.find_or_create_from_hash(auth)
    
    # Log the authorizing user in.
    # self.current_user = @auth.user

    render :text => "Welcome, #{current_user.twitter}."
  end
end
