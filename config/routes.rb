Rails.application.routes.draw do
  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'

  devise_for :users
  root 'chatrooms#index'

  resources :chatrooms
  resources :messages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
