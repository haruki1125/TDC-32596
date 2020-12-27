Rails.application.routes.draw do
  devise_for :users
  root to: "tdc#index"
  resources :tdc do
    collection do
      resources :category
      resources :price
    end
  end

  
end
