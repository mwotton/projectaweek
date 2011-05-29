class SessionsController < ApplicationController
  def create
    Rails.logger.warn "in create"
    auth = request.env['omniauth.auth']
    ap :auth => auth
    ap :params => params
    h=nil
    begin
      h = Hacker.find_or_create_from_hash(auth)
    rescue => e
      ap :err => e
      raise e
    end
    ap :hacker => h
    self.current_hacker = h

    # Log the authorizing user in.
    # self.current_user = @auth.user

    render :text => "Welcome, #{self.current_hacker.twitter}."
  end
end
