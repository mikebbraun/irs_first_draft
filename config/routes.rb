Rails.application.routes.draw do
  resources :companies
  root 'static#welcome'
  get 'static/welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
