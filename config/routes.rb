Rails.application.routes.draw do
  root 'tips#index'
  resources :tips, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
