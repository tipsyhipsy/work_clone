Rails.application.routes.draw do
  root to: 'twiclones#index'
  resources :twiclones do
    collection do
      post :confirm
    end
  end
end
