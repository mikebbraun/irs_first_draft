Rails.application.routes.draw do

  root 'users#new'

  resource :user
  resource :session
  resources :companies

  get 'static/welcome'
  get 'sessions/new'
  get 'users/new'
  get 'logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
