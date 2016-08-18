Rails.application.routes.draw do
  get 'pages/index'
  root 'pages#index'
  resources :cocktails do
    resources :ingredients, only: [:new, :create]
  end
end
