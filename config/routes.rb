Rails.application.routes.draw do
  get 'info/index'
  devise_for :users
  root to: "tdc#index"
  resources :info
  resources :tdc do
    collection do
      resources :category
      resources :price
    end
  end

  
end
