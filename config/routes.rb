Rails.application.routes.draw do
  root "pages#home"
  get "pages/about"
  resources :ideas do
    resources :comments
  end
end
