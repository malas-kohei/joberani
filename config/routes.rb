Rails.application.routes.draw do

  root "home#top"
  devise_for :users, controllers: { registrations: "registrations"}
  get 'posts/favorite_ranking'
  resources :posts do
    resources :comments
  end
  
  resources :users, only: [:show]
  resources :favorites, only: [:create, :destroy]

end
