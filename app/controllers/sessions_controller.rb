class SessionsController < ApplicationController
  def create
    Rails.logger.warn "in create"
    auth = request.env['omniauth.auth']
    Rails.logger.warn(auth.inspect)
    Rails.logger.warn(params.inspect)
    h=nil
    begin
      h = Hacker.find_or_create_from_hash(auth)
    rescue => e
      Rails.logger.warn "Caught #{e.inspect}"
      raise e
    end
    
    Rails.logger.warn("Hacker is #{h.inspect}")
    self.current_hacker = h

    # Log the authorizing user in.
    # self.current_user = @auth.user

    render :text => "Welcome, #{current_hacker.twitter}."
  end
end
