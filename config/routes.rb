Rails.application.routes.draw do
  root to: 'twiclones#index'
  resources :twiclones
end
