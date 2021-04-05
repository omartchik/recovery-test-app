Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # la page d'accueil
  root to: "pages#home"
  get 'restaurants', to: "restaurants#index"
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
end
