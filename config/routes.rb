Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: %i[new create]
    collection do
      get :top
    end

    member do
      get :chef
    end
  end

  resources :reviews, only: :destroy
end
