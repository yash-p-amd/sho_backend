Rails.application.routes.draw do

  get 'welcome/index'

  resources :products
  resources :purchases do
                get "check_out", on: :collection
            end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
