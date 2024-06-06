Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :produtos
    end
  end

  namespace :admin do
    resources :produtos
  end
  
  root "admin/produtos#index"

  get 'menu', to: 'menu#index'
end

