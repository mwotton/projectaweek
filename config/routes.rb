Railstemplate::Application.routes.draw do
  resources :entries do
    get :autocomplete_hacker_twitter, :on => :collection
    get :autocomplete_round_deadline, :on => :collection

  end
  resources :rounds
  resources :hackers
  root :to => "entries#scoreboard"
  match '/auth/twitter/callback', :to => 'sessions#create'

end
