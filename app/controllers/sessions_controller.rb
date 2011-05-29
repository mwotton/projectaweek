class SessionsController < ApplicationController
  def create
    auth = request.env['rack.auth']
    unless @hacker = Hacker.find_from_hash(auth)
      @auth = Hacker.create_from_hash(auth, current_user)
    end
    # Log the authorizing user in.
    self.current_user = @auth.user

    render :text => "Welcome, #{current_user.twitter}."
  end
end
