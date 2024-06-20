Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      resources :produtos
    end
  end

  namespace :admin do
    resources :produtos
  end
  
  root "menu#index"

  get 'menu', to: 'menu#index'
end

