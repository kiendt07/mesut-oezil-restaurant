Rails.application.routes.draw do
  root to: 'home#index'
  get '/home', to: 'home#index'
  get '/contact_us', to: 'contact_us#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
