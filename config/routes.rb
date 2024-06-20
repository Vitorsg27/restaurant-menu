Rails.application.routes.draw do
  devise_for :users, skip: [:registrations]

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
  get 'admin', to: 'admin/produtos#index'
end

