Rails.application.routes.draw do
resources :restaurants do
  collection do
    get :top
  end
  member do
    get :chef
  end
end
resources :restraurants do
  resources :reviews, only: [:new, :create]
end
end
