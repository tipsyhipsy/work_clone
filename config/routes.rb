Rails.application.routes.draw do
  root to: 'twiclones#new'
  resources :twiclones
end
