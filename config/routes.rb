Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  root "pages#home"
  get "pages/about"
  resources :ideas do
    resources :comments
  end
end
