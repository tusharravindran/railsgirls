Rails.application.routes.draw do
  resources :ideas
  root "pages#home"
  get "pages/about"
end
