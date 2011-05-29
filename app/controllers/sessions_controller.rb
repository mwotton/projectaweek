class SessionsController < ApplicationController
  def create
    Rails.logger.warn "in create"
    auth = request.env['omniauth.auth']
    Rails.logger.warn(auth.inspect)
    Rails.logger.warn(params.inspect)
    h = Hacker.find_or_create_from_hash(auth)
    Rails.logger.warn("Hacker is #{h.inspect}")
    self.current_hacker = h

    # Log the authorizing user in.
    # self.current_user = @auth.user

    render :text => "Welcome, #{current_hacker.twitter}."
  end
end
