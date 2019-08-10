Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'events#index'
  get '/events/update_list', to: 'events#update_list'
  resources :events, except: [:index]
  resources :users, only: [:show]
end
