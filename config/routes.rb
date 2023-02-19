Rails.application.routes.draw do
  devise_for :users
  
  root "pages#home"
  get "pages/about"
  resources :ideas do
    resources :comments
  end
end
