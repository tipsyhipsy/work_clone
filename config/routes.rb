Rails.application.routes.draw do
  root to: 'twiclones#new'
  resources :twiclones do
    collection do
      post :confirm
    end
  end
end
