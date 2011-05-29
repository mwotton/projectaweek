Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['paw_twitter_key'], ENV['paw_twitter_secret']
end
