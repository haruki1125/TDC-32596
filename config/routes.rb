Rails.application.routes.draw do
  root to: 'tdc/index'
  resources :tdc
  
end
