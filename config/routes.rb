Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'events#index'
  get '/events/update_list', to: 'events#update_list'
  resources :events, except: [:index] do
    resources :likes, only: [:create]
    resources :reviews, only: [:new, :create]
  end
  resources :users, only: [:show]
  resources :likes, only: [:destroy]
end
