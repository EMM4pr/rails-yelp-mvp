Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: %i[create]
  end
  resources :reviews, only: %i[destroy]
end
