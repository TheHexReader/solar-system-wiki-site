Rails.application.routes.draw do
  root 'home#index'
  resources :planets, only: [:index, :show]
end
