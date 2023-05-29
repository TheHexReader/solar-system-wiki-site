Rails.application.routes.draw do
  root to: "home#index"

  get 'planets', to: 'planets#index'
  get 'astronomical_objects/:slug(.:format)', to: 'planets#show', param: :slug, as: :astronomical_objects
  post '/change_language', to: 'home#change_language'
  resources :historic_events, only: [:index]
  # resources :planets, only: [:index, :show], param: :slug
end
